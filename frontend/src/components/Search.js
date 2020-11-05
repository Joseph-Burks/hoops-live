import React, { useEffect } from 'react'
import { StyleSheet, View, Text, TextInput, Button, ScrollView } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import history from '../history'
import TopBar from './TopBar'
import BadBottomBar from './BadBottomBar'

const Search = props => {

    const dispatch = useDispatch()
    const searchResult = useSelector(state => state.searchResult)
    const teamInput = useSelector(state => state.teamInput)
    const error = useSelector(state => state.teamInputError)

    const handleTeamPress = async team => {
        await dispatch({type: 'CHANGE_VIEW_TEAM', team: team})
        dispatch({type: 'SET_SEARCH_RESULT', result: []})
        history.push('/team')
    }

    const handleSearch = async () => {
        if(teamInput.length >= 3){
            return(
                await dispatch({type: 'TEAM_INPUT_ERROR', message: null}),
                fetch(`https://api-basketball.p.rapidapi.com/teams?search=${teamInput}`, {
                    "method": "GET",
                    "headers": {
                        "x-rapidapi-host": "api-basketball.p.rapidapi.com",
                        "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
                    }
                })
                .then(res => res.json())
                .then(async res => {
                    await dispatch({type: 'SET_SEARCH_RESULT', result: res.response})
                    // await dispatch({type: 'CHANGE_TEAM_INPUT', value: null})
                })
            )
        }
        await dispatch({type: 'TEAM_INPUT_ERROR', message: '3 character minimum'})
    }

    return(
        <View style={{ flex: 1 }}>
            <TopBar />
            <View style={{ flex: 1, backgroundColor: '#2B2B2B' }}>
                <View style={{ padding: 10}}></View>
                <View style={{flexDirection: 'row'}}>
                    <TextInput
                        style={styles.input}
                        placeholder='Team Name'
                        onChangeText={(text) => dispatch({
                            type: 'CHANGE_TEAM_INPUT',
                            value: text.toLowerCase()
                        })}
                    />
                    <View style={styles.button}>
                        <Button color='white' title='Search' onPress={handleSearch} />
                    </View>
                </View>
                <View style={{ paddingStart: 20}}>
                    {error ? <Text style={{color: 'orange'}} >{error}</Text> : null}
                </View>
                <ScrollView style={{ flex: 1 }}>
                    <Text style={{paddingLeft: 20, paddingTop: 10, paddingBottom: 10, color: '#AAAAAA'}}>RESULTS</Text>
                    <View style={{ backgroundColor: '#353535', margin: 5, borderRadius: 10, borderBottomWidth: .5, borderStartWidth: 1.5, borderColor: 'orange', alignItems: 'flex-start' }}>
                        {searchResult.map(team => {
                            return <Button key={team.id} title={team.name} color={'#AAAAAA'} onPress={() => handleTeamPress(team)} />
                        })}
                    </View>
                </ScrollView>
            </View>
            <BadBottomBar />
        </View>
    )
}

const styles = StyleSheet.create({
    input: {
        borderWidth: 1,
        borderColor: '#353535',
        borderRadius: 5,
        padding: 5,
        margin: 10,
        shadowColor: 'black',
        shadowRadius: 5,
        backgroundColor: '#AAAAAA',
        width: '72%'
    },
    button: {
        alignItems: 'flex-start',
        marginEnd: 10,
        marginTop: 5
    }
})

export default Search