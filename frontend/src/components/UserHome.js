import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'
import GameCard from './GameCard'

const UserHome = props => {

    const dispatch = useDispatch()
    const user = useSelector(state => state.loggedInUser)
    const todaysGames = useSelector(state => state.todaysGames)

    let today = new Date();
    let dd = String(today.getDate()).padStart(2, '0');
    let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    let yyyy = today.getFullYear();

    today = yyyy + '-' + mm + '-' + dd;
    
    useEffect(() => {
        fetch(`https://api-basketball.p.rapidapi.com/games?timezone=America/Chicago&date=${today}`, {
            "method": "GET",
            "headers": {
                "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
            }
        })
        .then(res => res.json())
        .then(async res => {
            await dispatch({type: 'SET_TODAYS_GAMES', games: res.response})
        })
    }, [])

    return(
        <View style={{ flex: 1 }}>
            <TopBar />
            <View style={{ flex: 1, backgroundColor: '#2b2b2b' }}>
                <ScrollView style={{ flex: 1 }}>
                    <View style={{ padding: 10}}></View>
                    <Text style={{paddingLeft: 20, paddingTop: 10, paddingBottom: 20, color: '#AAAAAA'}}>TODAY'S GAMES</Text>
                    {todaysGames.map(game => {
                        return game.status.short !== 'NS' && game.status.short !== 'FT' && game.status.short !== 'AOT' && game.status.short !== 'POST' ? <GameCard key={game.id} game={game}/> : null
                    })}
                    {todaysGames.map(game => {
                        return game.status.short === 'NS' ? <GameCard key={game.id} game={game}/> : null
                    })}
                    {todaysGames.map(game => {
                        return game.status.short === 'FT' ||  game.status.short === 'AOT' ? <GameCard key={game.id} game={game}/> : null
                    })}
                    {todaysGames.map(game => {
                        return game.status.short === 'POST' ? <GameCard key={game.id} game={game}/> : null
                    })}
                </ScrollView>
            </View>
            <BadBottomBar />
        </View>
    )
}

export default UserHome