import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, Button, DatePickerIOS } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import { Ionicons } from '@expo/vector-icons'
import history from '../history'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'
import URLBase from '../URLBase'
import GameCard from './GameCard'
import Standings from './Standings'

const ViewComp = () => {

    const dispatch = useDispatch()
    const competition = useSelector(state => state.competition)
    const compActive = useSelector(state => state.compActive)
    const games = useSelector(state => state.games)
    const standings = useSelector(state => state.standings)
    const date = useSelector(state => state.date)
    let mm = useSelector(state => state.mm)
    const dd = useSelector(state => state.dd)
    
    let setmm = String(date.getMonth() + 1).padStart(2, '0'); //January is 0!
    let setdd = String(date.getDate()).padStart(2, '0');
    if(mm[0] == 0){ mm = mm[1]}

    useEffect(() => {
        dispatch({type: 'SET_MM', mm: setmm})
        dispatch({type: 'SET_DD', dd: setdd})
    }, [])
    
    useEffect(() => {
        
        fetch(`https://api-basketball.p.rapidapi.com/games?season=${competition.season}&timezone=America/Chicago&league=${competition.comp_id}&date=2020-${mm.length === 1 ? `0${mm}` : mm}-${dd}`, {
            "method": "GET",
            "headers": {
                "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
            }
        })
        .then(res => res.json())
        .then(async res => {
            await dispatch({type: 'SET_GAMES', games: res.response})
        })

        fetch(`https://api-basketball.p.rapidapi.com/standings?league=${competition.comp_id}&season=${competition.season}`, {
            "method": "GET",
            "headers": {
                "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
            }
        })
        .then(res => res.json())
        .then(async res => {
            await dispatch({type: 'SET_STANDINGS', standings: res.response})
        })
    }, [dd])

    const toggleScoresStandings = async string => {
        await dispatch({type: 'SET_COMP_ACTIVE', active: string})
    }

    const decreaseDay = () => {
        if(dd >= 2){
            return dispatch({type: 'SET_DD', dd: String(parseInt(dd) - 1).padStart(2, '0')})
        }
    }

    const increaseDay = () => {
        if(dd <= 28){
            return dispatch({type: 'SET_DD', dd: parseInt(dd) + 1})
        }
    }

    return (
        <View style={{ flex: 1 }}>
            <TopBar />
            <View style={{ flex: 1, backgroundColor: '#2B2B2B' }}>
                <View style={{backgroundColor: '#2B2B2B', paddingTop: 10, alignItems: 'center' }}>
                    <Text style={{ color: 'white' }}>{competition.name}</Text>
                </View>
                <View style={{flexDirection: 'row', alignItems: 'center', justifyContent: 'center'}}>
                    <Button color={compActive === 'scores' ? 'white' : '#AAAAAA'} title='SCORES' onPress={() => toggleScoresStandings('scores')} />
                    <Button color={compActive === 'standings' ? 'white' : '#AAAAAA'} title='STANDINGS' onPress={() => toggleScoresStandings('standings')} />
                </View>
                {compActive === 'scores' ? 
                    <View style={{ flex: 1 }}>
                        <View style={{flexDirection: 'row', alignItems: 'center', justifyContent: 'center'}}>
                            <Ionicons name='ios-arrow-back' color= '#AAAAAA' size={20} style={{marginEnd: 10}} onPress={decreaseDay} />
                            <Text style={{ color: 'white' }}>{mm}/{dd}</Text>
                            <Ionicons name='ios-arrow-forward' color= '#AAAAAA' size={20} style={{marginStart: 10}} onPress={increaseDay} />
                        </View>
                        <ScrollView>
                            {games.length > 0 ?
                                games.map(game => <GameCard key={game.id} game={game} />)
                            :
                                <View style={{alignItems: 'center'}}>
                                    <Text style={{color: 'white', margin: 20}}>
                                        No games scheduled for {mm}/{dd}
                                    </Text>
                                </View>
                            }
                        </ScrollView>
                    </View>
                :
                    <View style={{ flex: 1}} >
                        <Standings standings={standings} />
                    </View>
                }
            </View>
            <BadBottomBar />
        </View>
    )
}

export default ViewComp