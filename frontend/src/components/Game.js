import React, { useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { StyleSheet, View, Text, ScrollView, TouchableOpacity, Image } from 'react-native'
import history from '../history'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'
import GameOddsBox from './GameOddsBox'

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

const Game = () => {

    const dispatch = useDispatch()
    const game = useSelector(state => state.game)
    const predictions = useSelector(state => state.predictions)

    const awayName = game.teams.away.name.toUpperCase().split(' ')
    const awayMascot = logos[`${awayName[awayName.length - 1]}`]
    const homeName = game.teams.home.name.toUpperCase().split(' ')
    const homeMascot = logos[`${homeName[homeName.length - 1]}`]
    const date = game.date[5] == 0 ? `${game.date[6]}/${game.date[8] + game.date[9]}` : `${game.date[5] + game.date[6]}/${game.date[8] + game.date[9]}`

    console.log('mascot', awayMascot)
    useEffect(() => {
        fetch(`https://api-basketball.p.rapidapi.com/odds?game=${game.id}`, {
            "method": "GET",
            "headers": {
                "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
            }
        }).then(res => res.json())
        .then(res => {
            if(res.response[0].bookmakers){
                dispatch({type: 'SET_PREDICTIONS', predictions: res.response[0].bookmakers})
            }
        })
    }, [])

    const handleTeamPress = async team => {
        await dispatch({type: 'CHANGE_VIEW_TEAM', team: team})
        await dispatch({type: 'SET_GAMES', games: []})
        history.push('/team')
    }

    // setInterval(() => {
    //     fetch(`https://api-basketball.p.rapidapi.com/odds?game=${game.id}`, {
    //         "method": "GET",
    //         "headers": {
    //             "x-rapidapi-host": "api-basketball.p.rapidapi.com",
    //             "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
    //         }
    //     }).then(res => res.json())
    //     .then(res => {
    //         dispatch({type: 'SET_GAME', game: res.response})
    //     })
    // }, 15000)

    return(
        <View style={{flex: 1}}>
            <TopBar />
            <View style={{flex: 1, backgroundColor: '#212121'}}>
                <View style={{height: 100, backgroundColor: '#111111', flexDirection: 'row', padding: 20}} >
                    
                    <TouchableOpacity style={{flex: 1, alignItems: 'center', justifyContent: 'center'}} onPress={() => handleTeamPress(game.teams.away)} >
                        {/* <Image 
                            style={{flex: 1, width: 30, height: 30}}
                            source={awayMascot}
                            resizeMode= 'contain'
                        /> */}
                        <Text style={{flex: 1, color: 'white', fontWeight: 'bold'}} >{awayName[awayName.length - 1]}</Text>
                        { game.status.short !== 'NS' && game.status.short !== 'POST' ?
                            <Text style={{flex: 1, color: 'white', fontWeight: 'bold', padding: 10}} >{game.scores.away.total}</Text>
                        :
                            null
                        }
                    </TouchableOpacity>

                    <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
                        {game.status.short === 'FT' || game.status.short === 'AOT' || game.status.short === 'NS' ?
                            <View style={{flex: 1, alignItems: 'center'}}>
                                <Text style={{color: 'white'}} >{date}</Text>
                            </View>
                        :
                            null
                        }
                        <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center'}}>
                            <Text style={{color: 'white'}} >{game.status.short === 'NS' ? game.time : game.status.short}</Text>
                        </View>
                    </View>

                    <TouchableOpacity style={{flex: 1, alignItems: 'center', justifyContent: 'center'}} onPress={() => handleTeamPress(game.teams.home)} >
                        {/* <Image 
                            style={{flex: 1, width: 30, height: 30}}
                            source={homeMascot}
                            resizeMode= 'contain'
                        /> */}
                        <Text style={{flex:1, color: 'white', fontWeight: 'bold'}}>{homeName[homeName.length - 1]}</Text>
                        { game.status.short !== 'NS' && game.status.short !== 'POST' ?
                            <Text style={{flex: 1, color: 'white', fontWeight: 'bold', padding: 10}}>{game.scores.home.total}</Text>
                        :
                            null
                        }
                    </TouchableOpacity>

                </View>
                
                <ScrollView>
                    <View style={{ backgroundColor: '#353535', borderRadius: 10, borderBottomWidth: .5, borderStartWidth: 1.5, borderColor: 'orange', margin: 5, flexDirection: 'row', padding: 5, height: 80 }}>

                        <View style={{ flex: 1, flexDirection: 'column', alignItems: 'flex-start', justifyContent: 'center' }}>
                            <View style={{flex: 1, paddingStart: 20, justifyContent: 'center'}}>
                            </View>
                            <View style={{flex: 1, paddingStart: 20, justifyContent: 'center'}}>
                                <Text style={{color: '#AAAAAA'}} >{game.teams.away.name}</Text>
                            </View>
                            <View style={{flex: 1, paddingStart: 20, justifyContent: 'center'}}>
                                <Text style={{color: '#AAAAAA'}} >{game.teams.home.name}</Text>
                            </View>
                        </View>

                        <View style={{flex: 1, flexDirection: 'row'}}>
                            <View style={{flexDirection: 'column', alignItems: 'center', flex: 1}}>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: '#AAAAAA'}}>1</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.away.quarter_1}</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.home.quarter_1}</Text></View>
                            </View>
                            <View style={{flexDirection: 'column', alignItems: 'center', flex: 1}}>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: '#AAAAAA'}}>2</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.away.quarter_2}</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.home.quarter_2}</Text></View>
                            </View>
                            <View style={{flexDirection: 'column', alignItems: 'center', flex: 1}}>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: '#AAAAAA'}}>3</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.away.quarter_3}</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.home.quarter_3}</Text></View>
                            </View>
                            <View style={{flexDirection: 'column', alignItems: 'center', flex: 1}}>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: '#AAAAAA'}}>4</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.away.quarter_4}</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.home.quarter_4}</Text></View>
                            </View>
                            <View style={{flexDirection: 'column', alignItems: 'center', flex: 1}}>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: '#AAAAAA'}}>OT</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.away.over_time}</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.home.over_time}</Text></View>
                            </View>
                            <View style={{flexDirection: 'column', alignItems: 'center', flex: 1}}>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>T</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.away.total}</Text></View>
                                <View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}><Text style={{color: 'white'}}>{game.scores.home.total}</Text></View>
                            </View>
                        </View>
                    </View>
                    <GameOddsBox predictions={predictions} game={game} awayName={awayName} homeName={homeName}/>
                </ScrollView>
            </View>
            <BadBottomBar />
        </View>
    )
}

export default Game