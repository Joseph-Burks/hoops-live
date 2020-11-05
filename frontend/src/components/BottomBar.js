import React from 'react'
import URLBase from '../URLBase'
import { useDispatch, useSelector } from 'react-redux'
import { StyleSheet, View } from 'react-native'
import {FontAwesome5} from '@expo/vector-icons'
import history from '../history'

const getIconSource = () => {

    const dispatch = useDispatch()
    const active = useSelector(state => state.active)

    FontAwesome5.getImageSource(
        'home',
        30,
        '#000'
        //FA5Style.solid
    ).then(source => dispatch({type: 'SET_HOME_ICON_SOURCE', source: source}));

    FontAwesome5.getImageSource(
        'star',
        30,
        '#000'
        //FA5Style.solid
    ).then(source => dispatch({type: 'SET_STAR_ICON_SOURCE', source: source}));

    FontAwesome5.getImageSource(
        'bars',
        30,
        '#000'
        //FA5Style.solid
    ).then(source => dispatch({type: 'SET_BARS_ICON_SOURCE', source: source}));

    FontAwesome5.getImageSource(
        'search',
        30,
        '#000'
        //FA5Style.solid
    ).then(source => dispatch({type: 'SET_SEARCH_ICON_SOURCE', source: source}));
}

const BottomBar = props => {

    getIconSource()

    return(
        <View style={styles.bottomBar}>
            <View>
                <FontAwesome5 name={'home'} />
            </View> 
            <View>
                <FontAwesome5 name={'star'} />
            </View>
            <View>
                <FontAwesome5 name={'bars'} />
            </View>
            <View>
                <FontAwesome5 name={'search'} />
            </View>
        </View>
    )
}

const styles = StyleSheet.create({
    bottomBar: {
        height: 60
    }
})

export default BottomBar