import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, Button } from 'react-native'

const Standings = props => {

    if(props.standings.length > 0){
        if(props.standings[0][0].league.id == 12){

            const east = props.standings[0].filter(team => props.standings[0].indexOf(team) > 14 && props.standings[0].indexOf(team) < 30)
            const west = props.standings[0].filter(team => props.standings[0].indexOf(team) < 15)

            return (
                <View>
                    <ScrollView>
                    <View style={{ backgroundColor: '#353535', borderStartWidth: 1.5, borderBottomWidth: .5, borderColor: 'orange', borderRadius: 10, paddingLeft: 10, paddingTop: 10, margin: 10 }}>
                        <View style={{alignItems: 'center'}}>
                            <Text style={{color: '#AAAAAA', alignItems: 'center'}} >{props.standings[0][15].group.name}</Text>
                        </View>
                        <View style={{ flex: 1, flexDirection: 'row', paddingStart: 30, paddingBottom: 5, paddingTop: 10}} >
                            <View style={{flex: 4, alignItems: 'flex-start'}}><Text style={{color: '#AAAAAA'}}>Name</Text></View>
                            <View style={{flex: 1, alignItems: 'flex-end'}}><Text style={{color: '#AAAAAA'}} >W</Text></View>
                            <View style={{flex: 1, alignItems: 'flex-end'}}><Text style={{color: '#AAAAAA'}} >L</Text></View>
                            <View style={{ flex: 2, alignItems: 'flex-end', paddingEnd: 10}}><Text style={{color: '#AAAAAA'}} >PCT</Text></View>
                        </View>
                        <View>
                            {east.map(team => {
                                return (
                                    <View key={team.team.id} style={{ flex: 1, flexDirection: 'row', padding: 5, paddingEnd: 10, paddingBottom: 10}}>
                                        <View style={{ flex: 1 }}>
                                            <Text style={{color: 'white'}} >{team.position}.</Text>
                                        </View>
                                        <View style={{ flex: 8}}>
                                            <Text style={{color: 'white'}} >{team.team.name}</Text>
                                        </View>
                                        <View style={{ flex: 2}}>
                                            <Text style={{color: 'white'}} >{team.games.win.total}</Text>
                                        </View>
                                        <View style={{ flex: 2}}>
                                            <Text style={{color: 'white'}} >{team.games.lose.total}</Text>
                                        </View>
                                        <View style={{ flex: 2, alignItems: 'flex-end'}}>
                                            <Text style={{color: 'white'}} >{team.games.win.percentage}</Text>
                                        </View>
                                    </View>
                                )
                            })}
                        </View>
                    </View>
                    <View style={{ backgroundColor: '#353535', borderStartWidth: 1.5, borderBottomWidth: .5, borderColor: 'orange', borderRadius: 10, paddingLeft: 10, paddingBottom: 5, paddingTop: 10, margin: 10 }}>
                        <View style={{alignItems: 'center'}}>
                            <Text style={{color: '#AAAAAA'}} >{props.standings[0][0].group.name}</Text>
                        </View>
                        <View style={{ flex: 1, flexDirection: 'row', paddingStart: 30, paddingTop: 10}} >
                            <View style={{flex: 4, alignItems: 'flex-start'}}><Text style={{color: '#AAAAAA'}}>Name</Text></View>
                            <View style={{flex: 1, alignItems: 'flex-end'}}><Text style={{color: '#AAAAAA'}} >W</Text></View>
                            <View style={{flex: 1, alignItems: 'flex-end'}}><Text style={{color: '#AAAAAA'}} >L</Text></View>
                            <View style={{ flex: 2, alignItems: 'flex-end', paddingEnd: 10}}><Text style={{color: '#AAAAAA'}} >PCT</Text></View>
                        </View>
                        <View >
                            {west.map(team => {
                                return (
                                    <View key={team.team.id} style={{ flex: 1, flexDirection: 'row', padding: 5, paddingEnd: 10, paddingBottom: 10}}>
                                        <View style={{ flex: 1 }}>
                                            <Text style={{color: 'white'}} >{team.position}.</Text>
                                        </View>
                                        <View style={{ flex: 8}}>
                                            <Text style={{color: 'white'}} >{team.team.name}</Text>
                                        </View>
                                        <View style={{ flex: 2}}>
                                            <Text style={{color: 'white'}} >{team.games.win.total}</Text>
                                        </View>
                                        <View style={{ flex: 2}}>
                                            <Text style={{color: 'white'}} >{team.games.lose.total}</Text>
                                        </View>
                                        <View style={{ flex: 2, alignItems: 'flex-end'}}>
                                            <Text style={{color: 'white'}} >{team.games.win.percentage}</Text>
                                        </View>
                                    </View>
                                )
                            })}
                        </View>
                    </View>
                    </ScrollView>
                </View>
            )
        }
        return(
            <View>
                <ScrollView>
                    <View style={{ backgroundColor: '#353535', borderRadius: 10, borderStartWidth: 1.5, borderBottomWidth: .5, borderColor: 'orange', paddingLeft: 20, paddingTop: 10, margin: 10 }}>
                        <Text style={{color: '#AAAAAA'}} >{props.standings[0][0].group.name}</Text>
                        <View style={{ flex: 1, flexDirection: 'row', paddingStart: 30, paddingBottom: 5, paddingTop: 10}} >
                            <View style={{flex: 4, alignItems: 'flex-start'}}><Text style={{color: '#AAAAAA'}}>Name</Text></View>
                            <View style={{flex: 1, alignItems: 'flex-end'}}><Text style={{color: '#AAAAAA'}} >W</Text></View>
                            <View style={{flex: 1, alignItems: 'flex-end'}}><Text style={{color: '#AAAAAA'}} >L</Text></View>
                            <View style={{ flex: 2, alignItems: 'flex-end', paddingEnd: 10}}><Text style={{color: '#AAAAAA'}} >PCT</Text></View>
                        </View>
                        <View>
                            {props.standings[0].map(team => {
                                return (
                                    <View key={team.team.id} style={{ flex: 1, flexDirection: 'row', padding: 5, paddingEnd: 10}}>
                                        <View style={{ flex: 1 }}>
                                            <Text style={{color: 'white'}} >{team.position}.</Text>
                                        </View>
                                        <View style={{ flex: 8}}>
                                            <Text style={{color: 'white'}} >{team.team.name}</Text>
                                        </View>
                                        <View style={{ flex: 2}}>
                                            <Text style={{color: 'white'}} >{team.games.win.total}</Text>
                                        </View>
                                        <View style={{ flex: 2}}>
                                            <Text style={{color: 'white'}} >{team.games.lose.total}</Text>
                                        </View>
                                        <View style={{ flex: 2, alignItems: 'flex-end'}}>
                                            <Text style={{color: 'white'}} >{team.games.win.percentage}</Text>
                                        </View>
                                    </View>
                                )
                            })}
                        </View>
                    </View>
                </ScrollView>
            </View>
        )
    }
    return null
}

export default Standings

