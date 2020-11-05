import React, { useEffect } from 'react';
import {Button, Text, View, FlatList, ScrollView} from 'react-native';
import { SvgUri } from 'react-native-svg'
import URLBase from '../URLBase'
import { useDispatch, useSelector } from 'react-redux'
import history from '../history'



function CountryItem({ country }) {
    const dispatch = useDispatch()

    const handleCountryPress = async country => {
        await dispatch({type: 'CHANGE_COUNTRY', country: country})
        fetch(`${URLBase}/competitions/${country.name}`)
        .then(res => res.json())
        .then(async comps => await dispatch({type: 'SET_COUNTRY_COMPS', comps: comps}))
    }

    if(country !== undefined){
        return(
            <View key={country.id} style={{flexDirection: 'row', alignItems: 'flex-start', justifyContent: 'center'}} >
                <SvgUri
                    style={{flex: 1}}
                    width='20px'
                    height='100%'
                    uri={country.flag_image}
                />
                <Button  title={country.name} color='#111111' onPress={() => handleCountryPress(country)}/>
            </View>
        )
    }
    return <View></View>
}

function CompItem({ competition }) {

    const dispatch = useDispatch()

    const handleCompPress = async competition => {
        await dispatch({type: 'SET_COMPETITION', competition: competition})
        fetch(`https://api-basketball.p.rapidapi.com/teams?league=${competition.comp_id}&season=${competition.season}`, {
            method: 'GET',
            headers: {
                "x-rapidapi-host": "api-basketball.p.rapidapi.com",
		        "x-rapidapi-key": "3381093b10msha73dfe8e505d862p18aa0bjsn19d499a0c1eb"
            }
        })
        .then(res => res.json())
        .then(async res => {
            await dispatch({type: 'SET_TEAMS', teams: res.response})
        })
    }

    return (
      <View style={{flex: 1, flexDirection: 'row', width: '100%', borderBottomColor: '#353535', borderBottomWidth: 1}}>
        <Button
            title={competition.name} color= '#353535'
            style={{
                borderBottomWidth: 1,
                borderBottomColor: '#353535'
            }}
            onPress={() => handleCompPress(competition)}
        />
      </View>
    );
}

function TeamItem({team}) {
    
    const dispatch = useDispatch()
    const loggedInUser = useSelector(state => state.loggedInUser)
    const competition = useSelector(state => state.competition)

    const handleTeamPress = async team => {
        

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
            history.push('/home')
        })
    }

    return (
        <View style={{flex: 1, flexDirection: 'row', width: '100%', borderBottomColor: '#353535', borderBottomWidth: 1}}>
          <Button
              title={team.name} color= '#353535'
              style={{
                  borderBottomWidth: 1,
                  borderBottomColor: '#353535'
              }}
              onPress={() => handleTeamPress(team)}
          />
        </View>
      );
}

const FavSelect = props => {

    const dispatch = useDispatch()
    const country = useSelector(state => state.country)
    const countries = useSelector(state => state.countries)
    const competitions = useSelector(state => state.competitions)
    const competition = useSelector(state => state.competition)
    const teams = useSelector(state => state.teams)

    useEffect(() => {
        fetch(`${URLBase}/countries`)
        .then(res => res.json())
        .then(async countries => {
            await dispatch({type: 'SET_COUNTRIES', countries: countries})
        })
    }, [])

    return (
        <View style={{alignItems: 'center'}}>
            <View style={{height: 70}}></View>
            <View style= {{width: '100%', padding: 10, backgroundColor: '#AAAAAA', borderTopLeftRadius: 10, borderTopRightRadius: 10, borderBottomLeftRadius: 10, borderBottomRightRadius: 10, height: '100%', alignItems: 'center'}}>
                <Text>Select Your Favorite Team</Text>
                <View style={{flex: 1, alignItems: 'flex-start', width: '100%', padding: 20}}>
                    {competition ?
                        <FlatList
                            style={{width: '100%'}}
                            data={teams}
                            renderItem={({ item }) => <TeamItem team={item} />}
                            keyExtractor={item => item.id.toString()}
                        />
                    : 
                        (country ? 
                            <FlatList
                                style={{width: '100%'}}
                                data={competitions}
                                renderItem={({ item }) => <CompItem competition={item} />}
                                keyExtractor={item => item.id.toString()}
                            />
                        :
                            <FlatList
                                style={{width: '100%'}}
                                data={countries}
                                renderItem={({ item }) => <CountryItem country={item} />}
                                keyExtractor={item => item.id.toString()}
                            />
                        )
                    }
                </View>
            </View>
        </View>
    );
}


export default FavSelect