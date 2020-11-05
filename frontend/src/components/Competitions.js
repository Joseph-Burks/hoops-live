import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, Button, TouchableOpacity, Image } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux'
import { SvgUri } from 'react-native-svg'
import history from '../history'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'
import URLBase from '../URLBase'


const Competitions = props => {

    const dispatch = useDispatch()
    const countries = useSelector(state => state.countries)

    useEffect(() => {
        fetch(`${URLBase}/countries`)
        .then(res => res.json())
        .then(countries => dispatch({type: 'SET_COUNTRIES', countries: countries}))
    }, [])

    const handleCountryPress = country => {
        dispatch({type: 'CHANGE_COUNTRY', country: country})
        history.push('/country')
    }

    return(
        <View style={{ flex: 1 }}>
            <TopBar />
            <View style={{ flex: 1, backgroundColor: '#2B2B2B' }}>
                <ScrollView style={{ flex: 1 }}>
                    <View style={{ padding: 10}}></View>
                    <Text style={{paddingLeft: 20, paddingTop: 10, paddingBottom: 10, color: '#AAAAAA'}}>COUNTRIES</Text>
                    <View style={{ backgroundColor: '#353535', margin: 5, borderRadius: 10, borderStartWidth: 1.5, borderBottomWidth: .5, borderColor: 'orange', alignItems: 'flex-start', paddingLeft: 20 }}>
                        {countries.map(country => {
                            return(
                                <View key={country.id} style={{flexDirection: 'row', justifyContent: 'center'}} >
                                    <SvgUri
                                        style={{flex: 1}}
                                        width='20px'
                                        height='100%'
                                        uri={country.flag_image}
                                    />
                                    <Button  title={country.name} color='white' onPress={() => handleCountryPress(country)}/>
                                </View>
                            )
                        })}
                    </View>
                </ScrollView>
            </View>
            <BadBottomBar />
        </View>
    )
}

export default Competitions