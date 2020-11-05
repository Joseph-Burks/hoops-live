import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, Button, TouchableOpacity, Image } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import { Ionicons } from '@expo/vector-icons'
import history from '../history'
import URLBase from '../URLBase'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'
import GameCard from './GameCard'
import Standings from './Standings'

const logos = {
    '76ers': require('../NBA_logos/76ers.png'),
    'Blazers': require('../NBA_logos/Blazers.png'),
    'Bucks': require('../NBA_logos/Bucks.png'),
    'Bulls': require('../NBA_logos/Bulls.png'),
    'Cavaliers': require('../NBA_logos/Cavaliers.png'),
    'Celtics': require('../NBA_logos/Celtics.png'),
    'Clippers': require('../NBA_logos/Clippers.png'),
    'Grizzlies': require('../NBA_logos/Grizzlies.png'),
    'Hawks': require('../NBA_logos/Hawks.png'),
    'Heat': require('../NBA_logos/Heat.png'),
    'Hornets': require('../NBA_logos/Hornets.png'),
    'Jazz': require('../NBA_logos/Jazz.png'),
    'Kings': require('../NBA_logos/Kings.png'),
    'Knicks': require('../NBA_logos/Knicks.png'),
    'Lakers': require('../NBA_logos/Lakers.png'),
    'Magic': require('../NBA_logos/Magic.png'),
    'Mavericks': require('../NBA_logos/Mavs.png'),
    'Nets': require('../NBA_logos/Nets.png'),
    'Nuggets': require('../NBA_logos/Nuggets.png'),
    'Pacers': require('../NBA_logos/Pacers.png'),
    'Pelicans': require('../NBA_logos/Pelicans.png'),
    'Pistons': require('../NBA_logos/Pistons.png'),
    'Raptors': require('../NBA_logos/Raptors.png'),
    'Rockets': require('../NBA_logos/Rockets.png'),
    'Spurs': require('../NBA_logos/Spurs.png'),
    'Suns': require('../NBA_logos/Suns.png'),
    'Thunder': require('../NBA_logos/Thunder.png'),
    'Timberwolves': require('../NBA_logos/Timberwolves.png'),
    'Warriors': require('../NBA_logos/Warriors.png'),
    'Wizards': require('../NBA_logos/Wizards.png')
}

const ViewTeam = () => {

    const dispatch = useDispatch()
    const loggedInUser = useSelector(state => state.loggedInUser)
    const team = useSelector(state => state.viewTeam)
    const teamActive = useSelector(state => state.teamActive)
    const games = useSelector(state => state.games)
    const standings = useSelector(state => state.standings)
    const mm = useSelector(state => state.mm)
    const dd = useSelector(state => state.dd)
    let userFavoriteIDs = loggedInUser.favorites.map(fav => fav.team_id)
    const teamName = team.name.split(' ')
    const teamMascot = logos[teamName[teamName.length - 1]]
    const record = useSelector(state => state.record)



    let today = new Date();
    let setdd = String(today.getDate()).padStart(2, '0');
    let setmm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    let date = mm + '/' + dd;

    const monthNames = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC']

    let monthGames = games.length > 0 ? games.filter(game => `${game.date[5] + game.date[6]}` == mm) : []

    useEffect(() => {
        dispatch({type: 'SET_MM', mm: setmm})
        dispatch({type: 'SET_DD', dd: setdd})

        fetch(`https://api-basketball.p.rapidapi.com/games?timezone=America/Chicago&team=${team.id}`, {
            "method": "GET",
            "headers": {
                "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
            }
        }).then(res => res.json())
        .then(async res => {
            let filteredGames = res.response.filter(game => game.league.season == '2019-2020' || game.league.season == '2020')
            await dispatch({type: 'SET_GAMES', games: filteredGames})
        })
        if(games.length > 0){
            fetch(`https://api-basketball.p.rapidapi.com/standings?league=${monthGames[0].league.id}&season=${monthGames[0].league.season}`, {
                "method": "GET",
                "headers": {
                    "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                    "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
                }
            }).then(res => res.json())
            .then(async res => {
                await dispatch({type: 'SET_STANDINGS', standings: res.response})
                userFavoriteIDs = loggedInUser.favorites.map(fav => fav.team_id)
            })
        }
    }, [])

    useEffect(() => {
        if(games.length > 0){
            fetch(`https://api-basketball.p.rapidapi.com/standings?league=${monthGames[0].league.id}&season=${monthGames[0].league.season}`, {
                "method": "GET",
                "headers": {
                    "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                    "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
                }
            }).then(res => res.json())
            .then(async res => {
                await dispatch({type: 'SET_STANDINGS', standings: res.response})
                let teamInfo = res.response[0].filter(standing => standing.team.id == team.id)
                let wins = teamInfo[0].games.win.total
                let losses = teamInfo[0].games.lose.total
                await dispatch({type: 'SET_RECORD', record: `${wins}-${losses}`})
                userFavoriteIDs = loggedInUser.favorites.map(fav => fav.team_id)
            })
        }
    }, [games])

    const toggleScoresStandings = async string => {
        await dispatch({type: 'SET_TEAM_ACTIVE', active: string})
    }

    const decreaseMonth = () => {
        if(mm >= 2){
            return dispatch({type: 'SET_MM', mm: parseInt(mm) - 1})
        }
        dispatch({type: 'SET_MM', mm: '12'})
    }

    const increaseMonth = () => {
        if(mm <= 11){
            return dispatch({type: 'SET_MM', mm: parseInt(mm) + 1})
        }
        dispatch({type: 'SET_MM', mm: '01'})
    }

    const handleFavorite = () => {
        if(userFavoriteIDs.includes(team.id)){
            fetch(`${URLBase}/favorites/delete`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    user_id: loggedInUser.id,
                    team_id: team.id
                })
            })
            .then(res => res.json())
            .then(async res => {
                await dispatch({type: 'SET_LOGGED_IN_USER', user: res})
                history.push('/team')
            })
        } else {
            fetch(`${URLBase}/favorites`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    user_id: loggedInUser.id,
                    team_id: team.id
                })
            })
            .then(res => res.json())
            .then(async res => {
                await dispatch({type: 'SET_LOGGED_IN_USER', user: res})
                history.push('/team')
            })
        }
    }

    return (
        <View style={{ flex: 1 }}>
            <TopBar />
            <View style={{ flex: 1, backgroundColor: '#2B2B2B' }}>
                <View style={{backgroundColor: '#2B2B2B', padding: 10, justifyContent: 'center', flexDirection: 'row', paddingEnd: 30, paddingStart: 30 }}>
                    <View style={{flex: 1, alignItems: 'flex-start', justifyContent: 'center'}}>
                        <Image 
                            style={{flex: 1, width: 50, height: 50}}
                            source={teamMascot}
                            resizeMode= 'contain'
                        />
                    </View>
                    <View style={{flex: 3, alignItems: 'center', justifyContent: 'center'}}>
                        <Text style={{ color: 'white', fontWeight: 'bold', fontSize: 20, padding: 5 }}>{team.name}</Text>
                        <Text style={{ color: '#AAAAAA', fontSize: 15, padding: 5 }}>Record: {record}</Text>
                    </View>
                    <TouchableOpacity style={{flex: 1, alignItems: 'flex-end', justifyContent: 'center'}} onPress={handleFavorite}>
                        <Ionicons  name={userFavoriteIDs.includes(team.id) ? 'ios-star' : 'ios-star-outline'} size={35} color={'orange'} />
                    </TouchableOpacity>
                </View>
                <View style={{flexDirection: 'row', alignItems: 'center', justifyContent: 'center'}}>
                    <Button color={teamActive === 'scores' ? 'white' : '#AAAAAA'} title='SCORES' onPress={() => toggleScoresStandings('scores')} />
                    <Button color={teamActive === 'standings' ? 'white' : '#AAAAAA'} title='STANDINGS' onPress={() => toggleScoresStandings('standings')} />
                </View>
                    {teamActive === 'scores' ? 
                        <View style={{ flex: 1 }}>
                            <View style={{flexDirection: 'row', alignItems: 'center', justifyContent: 'center'}}>
                                <Ionicons name='ios-arrow-back' size={20} color= '#AAAAAA' style={{marginEnd: 10}} onPress={decreaseMonth} />
                                <Text style={{color: 'white' }}>{mm[0] == 0 ? monthNames[parseInt(mm[1]) - 1] : monthNames[parseInt(mm) - 1]}</Text>
                                <Ionicons name='ios-arrow-forward' size={20} color= '#AAAAAA' style={{marginStart: 10}} onPress={increaseMonth} />
                            </View>
                            <ScrollView>
                                {monthGames.length > 0 ?
                                    monthGames.map(game => <GameCard key={game.id} game={game} />)
                                :
                                    <View style={{alignItems: 'center'}}>
                                        <Text style={{color: 'white', margin: 20}}>
                                            No games scheduled for {mm[0] == 0 ? monthNames[parseInt(mm[1]) - 1] : monthNames[parseInt(mm) - 1]}
                                        </Text>
                                    </View>
                                }
                            </ScrollView>
                        </View>
                    :
                        <View style={{ flex: 1}} >
                            {standings.length > 0 ? <Standings standings={standings} /> : null }
                        </View>
                    }
            </View>
            <BadBottomBar />
        </View>
    )
}

export default ViewTeam