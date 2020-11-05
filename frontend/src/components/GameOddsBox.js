import React from 'react'
import { useDispatch, useSelector } from 'react-redux'
import { StyleSheet, View, Text } from 'react-native'

const GameOddsBox = props => {

    
    const { predictions, game, awayName, homeName } = props
    const homeAway = predictions.map(book => book.bets.filter(bet => bet.name === 'Home/Away'))

    if(predictions.length > 0){
        return(
            <View style={{flex: 1, backgroundColor: '#353535', borderRadius: 10, borderBottomWidth: .5, borderStartWidth: 1.5, borderColor: 'orange', margin: 5, padding: 5}}>
                <Text style={{paddingStart: 20, color: '#AAAAAA'}}>PREDICTIONS</Text>
                
                <View style={{flexDirection: 'row', padding: 10}}>
                    <View style={{ flex: 2, flexDirection: 'column', alignItems: 'flex-start', justifyContent: 'center' }}>
                        <View style={{padding: 5}}><Text style={{color: '#AAAAAA'}}>Bookmaker</Text></View>
                        {predictions.map(book => {
                            return <View style={{flex: 1, padding: 5}} key={book.id} ><Text style={{color: 'white'}} >{book.name}</Text></View>
                        })}
                    </View>
                    <View style={{ flex: 1, flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>
                        <View style={{padding: 5}}><Text style={{color: '#AAAAAA'}}>{awayName[awayName.length - 1]}</Text></View>
                        {homeAway.map(book => {
                            return <View style={{flex: 1, padding: 5}} key={homeAway.indexOf(book)} ><Text style={{color: 'white'}} >{book[0] ? book[0].values[1].odd : ' '}</Text></View>
                        })}
                    </View>
                    <View style={{ flex: 1, flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>
                        <View style={{padding: 5}}><Text style={{color: '#AAAAAA'}}>{homeName[homeName.length - 1]}</Text></View>
                        {homeAway.map(book => {
                            return <View style={{flex: 1, padding: 5}} key={homeAway.indexOf(book)} ><Text style={{color: 'white'}} >{book[0] ? book[0].values[0].odd : ' '}</Text></View>
                        })}
                    </View>
                </View>
            </View>
        )
    }
    return null
}

export default GameOddsBox