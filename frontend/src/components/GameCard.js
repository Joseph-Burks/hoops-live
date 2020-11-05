import React, { useEffect } from 'react'
import { StyleSheet, View, Text, TouchableOpacity, Image } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import history from '../history'
import { Ionicons } from '@expo/vector-icons'


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


const GameCard = props => {

    const dispatch = useDispatch()
    const homeName = props.game.teams.home.name.split(' ')
    const homeMascot = logos[`${homeName[homeName.length - 1]}`]
    const awayName = props.game.teams.away.name.split(' ')
    const awayMascot = logos[`${awayName[awayName.length - 1]}`]

    const date = props.game.date[5] == 0 ? `${props.game.date[6]}/${props.game.date[8] + props.game.date[9]}` : `${props.game.date[5] + props.game.date[6]}/${props.game.date[8] + props.game.date[9]}`

    const handleGamePress = async game => {
        await dispatch({type: 'SET_GAME', game: game})
        history.push('/game')
    }

    return(
        <TouchableOpacity onPress = {() => handleGamePress(props.game)}>
            <View style={{ backgroundColor: '#353535', borderColor: 'orange', borderStartWidth: 1.5, borderBottomWidth: .5, borderRadius: 10, margin: 5, flexDirection: 'row' }}>
                {props.game.league.id == 12 ?
                    <View style={{ flex: 1, justifyContent: 'center', padding: 5 }}>
                        <Image 
                            style={{flex: 1, width: 20, height: 15, margin: 2, marginStart: 10}}
                            source={awayMascot}
                            resizeMode= 'contain'
                        />
                        <Image 
                            style={{flex: 1, width: 20, height: 15, marginStart: 10}}
                            source={homeMascot}
                            resizeMode= 'contain'
                        />
                    </View>
                :
                    <View style={{ flex: 1, justifyContent: 'center', padding: 5 }}>
                        <Ionicons name='ios-basketball' color='#AAAAAA' size={15} style={{flex: 1, margin: 2, marginStart: 10, marginTop: 6}} />
                        <Ionicons name='ios-basketball' color='#AAAAAA' size={15} style={{flex: 1, marginStart: 10}} />
                    </View>
                }
                <View style={{ flex: 6, justifyContent: 'center', paddingTop: 10 }}>
                    <View style={{flex: 1}}>
                        <Text style={{color: 'white'}} >{props.game.teams.away.name}</Text>
                    </View>
                    <View style={{flex: 1}}>
                        <Text style={{color: 'white'}} >{props.game.teams.home.name}</Text>
                    </View>
                </View>

                <View style={{flex: 2, alignItems: 'flex-end'}}>
                    <View style={{margin: 10, marginEnd: 20, alignItems: 'flex-end'}}>
                        <Text style={{color: 'white'}} >{props.game.scores.away.total}</Text>
                    </View>
                    <View style={{marginBottom: 10, marginEnd: 20, alignItems: 'flex-end'}}>
                        <Text style={{color: 'white'}} >{props.game.scores.home.total}</Text>
                    </View>
                </View>

                <View style={{flex: 2 }}>
                    {props.game.status.short === 'FT' || props.game.status.short === 'AOT' || props.game.status.short === 'NS' ?
                        <View style={{margin: 10, marginEnd: 20, alignItems: 'flex-end'}}>
                            <Text style={{color: 'white'}} >{date}</Text>
                        </View>
                    :
                        null
                    }
                    <View style={{marginBottom: 10, marginEnd: 20, alignItems: 'flex-end', justifyContent: 'center', flex: 1}}>
                        <Text style={{color: 'white'}} >{props.game.status.short === 'NS' ? props.game.time : props.game.status.short}</Text>
                    </View>
                </View>
            </View>
        </TouchableOpacity>
    )
}

export default GameCard