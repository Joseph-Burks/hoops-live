import React, { useEffect } from 'react'
import { StyleSheet, View, Text, TextInput, Button } from 'react-native'
import { useDispatch, useSelector  } from 'react-redux';
import { Ionicons } from '@expo/vector-icons'
import history from '../history'
import { deleteToken } from '../storage'
import URLBase from '../URLBase'

const UserProfile = () => {

    const dispatch = useDispatch()
    const loggedInUser = useSelector(state => state.loggedInUser)
    const editUsername = useSelector(state => state.editUsername)
    const usernameInput = useSelector(state => state.usernameInput)
    const error = useSelector(state => state.errorMessages.signup)

    const toggleEditUsername = () => {
        dispatch({type: 'EDIT_USERNAME', editUsername: true})
    }

    const saveUsername = () => {
        dispatch({type: 'SIGN_UP_ERROR', message: null})
        fetch(`${URLBase}/users/edit`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                id: loggedInUser.id,
                username: usernameInput
            })
        }).then(res => res.json())
        .then(async (response) => {
            if(response.error){
                return dispatch({type: 'SIGN_UP_ERROR', message: response.message})
            }
            await dispatch({type: 'SET_LOGGED_IN_USER', user: response.user})
            dispatch({type: 'EDIT_USERNAME', editUsername: false})
        })
    }

    const handleLogOut = async () => {
        await deleteToken()
        await dispatch({type: 'USER_PROFILE_VISIBLE', userProfileVisible: false})
        history.push('/')
        await dispatch({type: 'SET_LOGGED_IN_USER', user: null})
    }

    const hide = () => {
        dispatch({type: 'EDIT_USERNAME', editUsername: false})
        dispatch({type: 'USER_PROFILE_VISIBLE', userProfileVisible: false})
    }

    if(loggedInUser){
        return(
            <View style={{flex: 1, alignItems: 'center', backgroundColor: '#111111', paddingTop: 100}}>
                <View style={{flex: 1, alignItems: 'center', marginBottom: 70}}>
                    <Ionicons name='ios-basketball' color='orange' size={150} />
                    <Text style={{color: '#AAAAAA', fontSize: 30, fontWeight: 'bold'}}>Hoops<Text style={{fontWeight: 'normal'}}>Live</Text></Text>
                </View>
                {editUsername ?
                    <View style={{flex: 1, alignItem: 'center'}}>
                        <TextInput 
                            style={{backgroundColor: '#AAAAAA', minWidth: '60%', padding: 5, borderRadius: 5 }}
                            placeholder={loggedInUser.username}
                            onChangeText={(text) => dispatch({
                                type: 'CHANGE_USERNAME_INPUT',
                                value: text
                            })}
                        />
                        <Button color={'#AAAAAA'} title='Save' onPress={saveUsername} />
                        { error ? <Text style={{color: 'orange'}}>{error}</Text> : null}
                    </View>
                :
                    <View style={{flex: 1}}>
                        <View style={{flex: 1, flexDirection: 'row', justifyContent: 'center'}}>
                            <Text style={{color: '#AAAAAA', fontSize: 30}}>{loggedInUser.username}</Text>
                            <Ionicons name='md-create' color='orange' size={20} style={{paddingTop: 10, paddingStart: 10}} onPress={toggleEditUsername} />
                        </View>
                        <View style={{flex: 1}}>
                            <Button color={'#AAAAAA'} title='Log Out' onPress={handleLogOut} />
                        </View>
                    </View>
                }
                <View style={{flex: 1, justifyContent: 'flex-end', marginBottom: 40}}>
                    <Button color={'#AAAAAA'} title='Hide' onPress={hide} />
                </View>
            </View>
        )
    }
    return null
}

export default UserProfile