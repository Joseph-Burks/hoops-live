import React, { useState } from 'react'
import URLBase from '../URLBase'
import { useDispatch, useSelector } from 'react-redux'
import { StyleSheet, View, Text, TextInput, Button, Modal } from 'react-native'
import { storeToken } from '../storage'
import TopBar from './TopBar'
import FavSelect from './FavSelect'


const SignUpPage = props => {
    
    const dispatch = useDispatch()
    const usernameInput = useSelector(state => state.usernameInput)
    const passwordInput = useSelector(state => state.passwordInput)
    const error = useSelector(state => state.errorMessages.signup)
    const favSelectIsVisible = useSelector(state => state.favSelectIsVisible)
    
    const handleSignUp = () => {
        dispatch({type: 'SIGN_UP_ERROR', message: null})
        fetch(`${URLBase}/users`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                username: usernameInput,
                password: passwordInput
            })
        }).then(res => res.json())
        .then(async (response) => {
            if(response.error){
                return dispatch({type: 'SIGN_UP_ERROR', message: response.message})
            }
            dispatch({type: 'SET_LOGGED_IN_USER', user: response.user})
            dispatch({type: 'FAV_SELECT_VISIBLE_TRUE', visible: true})
            await storeToken(response.token)
        })
    }

    return(
        <View style={{ flex: 1}}>

            <TopBar/>

            <View style={styles.container}>
                <Modal
                    animationType="slide"
                    transparent={true}
                    visible={favSelectIsVisible}
                >
                    <FavSelect />
                </Modal>
                <View style={styles.card}>
                    <View>
                        <TextInput
                            style={styles.input}
                            placeholder='Username...         '
                            onChangeText={(text) => dispatch({
                                type: 'CHANGE_USERNAME_INPUT',
                                value: text.toLowerCase()
                            })}
                        />
                    </View>
                    <View>
                        <TextInput
                            placeholder='Password...          '
                            secureTextEntry={true}
                            style={styles.input}
                            onChangeText={(text) => dispatch({
                                type: 'CHANGE_PASSWORD_INPUT',
                                value: text.toLowerCase()
                            })}
                        />
                    </View>
                    <View>
                        <Button style={{margin: 10}} title='Sign Up' color={'#AAAAAA'} onPress={handleSignUp} />
                    </View>
                    {error ? <Text style={{color: 'orange'}} >{error}</Text> : null}
                </View>
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    card: {
        backgroundColor: '#353535',
        margin: 20,
        padding: 10,
        borderRadius: 5,
        borderLeftWidth: 1.5,
        borderBottomWidth: .5,
        borderColor: 'orange',
        justifyContent: 'center',
        alignItems: 'center',
        width: '90%'
    },
    container: {
        flex: 1,
        backgroundColor: '#2B2B2B',
        alignItems: 'center',
        padding: '10%'
    },
    input: {
        borderWidth: 1,
        borderColor: '#353535',
        borderRadius: 5,
        padding: 5,
        margin: 10,
        backgroundColor: '#AAAAAA',
        minWidth: '80%'
    }
});

export default SignUpPage