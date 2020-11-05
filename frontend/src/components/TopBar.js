import React from'react'
import { StyleSheet, View, Text, TouchableOpacity, Modal } from 'react-native'
import { Ionicons } from '@expo/vector-icons'
import { useDispatch, useSelector  } from 'react-redux';
import history from '../history'
import UserProfile from './UserProfile'

const TopBar = props => {

    const dispatch = useDispatch()
    const loggedInUser = useSelector(state => state.loggedInUser)
    const userProfileVisible = useSelector(state => state.userProfileVisible)


    const userProfileToggle = () => {
        dispatch({type: 'USER_PROFILE_VISIBLE', userProfileVisible: true})
    }

    return(
        <View style={styles.topBar}>
            <TouchableOpacity style={{flex: 1, justifyContent: 'center'}}>
                {loggedInUser ? null : <Ionicons name='ios-arrow-back' color='#AAAAAA' size={30} onPress={() => history.goBack()} />}
            </TouchableOpacity>
            <View style={{flex: 2, flexDirection: 'row', alignItems: 'center', justifyContent: 'center'}}>
                <Ionicons name='ios-basketball' color={'orange'} size={30} />
                <Text style={{ color: '#AAAAAA', fontWeight: 'bold'}}> Hoops<Text style={{fontWeight: 'normal'}}>Live</Text></Text>
            </View>
            <TouchableOpacity style={{flex: 1, alignItems: 'flex-end', justifyContent: 'center'}}>
                {loggedInUser ? <Ionicons name='ios-contact' color='#AAAAAA' size={30} onPress={userProfileToggle}/> : null }
            </TouchableOpacity>
            <Modal
                    animationType="slide"
                    transparent={false}
                    visible={userProfileVisible}
                >
                    <UserProfile />
            </Modal>
        </View>
    )
}

const styles = StyleSheet.create({
    topBar: {
        height: 70,
        backgroundColor: '#111111',
        paddingTop: 30,
        paddingStart: 30,
        paddingEnd: 30,
        justifyContent: 'center',
        flexDirection: 'row'
        
    }
})

export default TopBar