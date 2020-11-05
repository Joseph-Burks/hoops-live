import React, { useEffect } from 'react'
import { StyleSheet, View, Text, ScrollView, Button } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import history from '../history'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'


const Favorites = props => {

    const dispatch = useDispatch()
    const user = useSelector(state => state.loggedInUser)
    const favorites = useSelector(state => state.favorites)

    useEffect(() => {
        user.favorites.forEach(fav => {
            fetch(`https://api-basketball.p.rapidapi.com/teams?id=${fav.team_id}`, {
                "method": "GET",
                "headers": {
                    "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                    "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
                }
            })
            .then(res => res.json())
            .then(async res => {
                await dispatch({type: 'ADD_TEAM_TO_FAVS', team: res.response[0]})
            })
        })
    }, [])

    const handleTeamPress = async team => {
        await dispatch({type: 'CHANGE_VIEW_TEAM', team: team})
        history.push('/team')
    }

    return(
        <View style={{ flex: 1 }}>
        <TopBar />
        <View style={{ flex: 1, backgroundColor: '#2B2B2B' }}>
            <ScrollView style={{ flex: 1 }}>
                <View style={{ padding: 10}}></View>
                <Text style={{paddingLeft: 20, paddingTop: 10, paddingBottom: 10, color: '#AAAAAA'}}>FAVORITES</Text>
                <View style={{ backgroundColor: '#353535', borderRadius: 10, borderBottomWidth: .5, borderStartWidth: 1.5, borderColor: 'orange', alignItems: 'flex-start' }}>
                    {favorites.map(favorite => {
                        return <Button key={favorite.id} title={favorite.name} color={'#AAAAAA'} onPress={() => handleTeamPress(favorite)} />
                    })}
                </View>
            </ScrollView>
        </View>
        <BadBottomBar />
    </View>
    )
}

export default Favorites