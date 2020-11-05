import React from 'react'
import URLBase from '../URLBase'
import { useDispatch, useSelector } from 'react-redux'
import { StyleSheet, View, Button } from 'react-native'
import { Ionicons } from '@expo/vector-icons'
import history from '../history'

const BadBottomBar = () => {

    const dispatch = useDispatch()
    const active = useSelector(state => state.active)

    return (
        <View style={styles.bottomBar}>
            <View style={{ flex: 1, alignItems: 'center' }}>
                <Ionicons color={ active === 'home' ? 'orange' : '#AAAAAA'} name='ios-home' size={35} onPress={() => {
                    history.push('/home')
                    dispatch({type: 'SET_ACTIVE', active: 'home'})
                }} />
            </View>
            <View style={{ flex: 1, alignItems: 'center' }}>
                <Ionicons color={ active === 'favs' ? 'orange' : '#AAAAAA'} name='ios-star' size={35} onPress={() => {
                    history.push('/favorites')
                    dispatch({type: 'SET_ACTIVE', active: 'favs'})
                }} />
            </View>
            <View style={{ flex: 1, alignItems: 'center' }}>
                <Ionicons color={ active === 'comps' ? 'orange' : '#AAAAAA'} name='ios-menu' size={35} onPress={() => {
                    history.push('/competitions')
                    dispatch({type: 'SET_ACTIVE', active: 'comps'})
                }} />
            </View>
            <View style={{ flex: 1, alignItems: 'center' }}>
                <Ionicons color={ active === 'search' ? 'orange' : '#AAAAAA'} name='md-search' size={35} onPress={() => {
                    history.push('/search')
                    dispatch({type: 'SET_ACTIVE', active: 'search'})
                }} />
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    bottomBar: {
        flexDirection: 'row',
        height: 60,
        backgroundColor: '#111111',
        padding: 10,
        alignItems: 'center',
        justifyContent: 'center',
        shadowColor: '#353535',
        shadowRadius: 10
    }
})

export default BadBottomBar