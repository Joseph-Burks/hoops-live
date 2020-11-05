import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, Button } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import history from '../history'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'
import URLBase from '../URLBase'


const ViewCountry = props => {

    const dispatch = useDispatch()
    const country = useSelector(state => state.country)
    const countryActive = useSelector(state => state.countryActive)
    const competitions = useSelector(state => state.competitions)
    

    useEffect(() => {
        fetch(`${URLBase}/competitions/${country.name}`)
        .then(res => res.json())
        .then(async comps => await dispatch({type: 'SET_COUNTRY_COMPS', comps: comps}))
    }, [])

    const toggleLeagueTournament = async string => {
        await dispatch({type: 'SET_COUNTRY_ACTIVE', active: string})
    }

    const handleCompPress = async comp => {
        await dispatch({type: 'SET_COMPETITION', competition: comp})
        history.push('/comp')
    }

    return(
        <View style={{ flex: 1 }}>
            <TopBar />
            <View style={{backgroundColor: '#2B2B2B', paddingTop: 10, alignItems: 'center' }}>
                <Text style={{ color: 'white' }}>{country.name}</Text>
            </View>
            <View style={{flexDirection: 'row', justifyContent: 'center', backgroundColor: '#2B2B2B'}} >
                <Button color={countryActive === 'leagues' ? 'white' : '#AAAAAA'} title='LEAGUES' onPress={() => toggleLeagueTournament('leagues')} />
                <Button color={countryActive === 'tournaments' ? 'white' : '#AAAAAA'} title='TOURNAMENTS' onPress={() => toggleLeagueTournament('tournaments')} />
            </View>
            <View style={{ flex: 1, backgroundColor: '#2B2B2B' }}>
                <ScrollView style={{ flex: 1 }}>
                    <View style={{ padding: 10}}></View>
                    <View style={{ backgroundColor: '#353535', borderRadius: 10, alignItems: 'flex-start', paddingLeft: 20 }}>
                        {countryActive === 'leagues' ?
                            competitions.map(comp => {
                                if(comp.comp_type === 'League'){
                                    return <Button key={comp.id} title={comp.name} color='white' onPress={() => handleCompPress(comp)} />
                                }
                            })
                        :
                            competitions.map(comp => {
                                if(comp.comp_type === 'cup'){
                                    return <Button key={comp.id} title={comp.name} color='white' onPress={() => handleCompPress(comp)} />
                                }
                            })
                        }
                    </View>
                </ScrollView>
            </View>
            <BadBottomBar style={{ flex: 1 }}/>
        </View>
    )
}

export default ViewCountry