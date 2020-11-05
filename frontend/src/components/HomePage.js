import React from 'react'
import { StyleSheet, Text, View, Button } from 'react-native';
import { Ionicons } from '@expo/vector-icons'
import history from '../history'

function HomePage (props) {

  return(
    <View style={styles.container}>
      <Ionicons 
        name='ios-basketball'
        color='orange'
        size={150} 
      />
      <Text
        style={{
          color: '#AAAAAA',
          fontWeight: 'bold',
          fontSize: 60
        }}
      >Hoops
        <Text
          style={{
            color: '#AAAAAA',
            fontWeight: 'normal'
          }}
        >Live
        </Text>
      </Text>
      <View 
        style={{
          flexDirection: 'row',
          marginTop: 10
        }}
      >
        <Button
          color= '#AAAAAA'
          title='Sign Up'
          onPress={() => history.push('/signup')}
        />
        <Button
          color= '#AAAAAA'
          title='Log In'
          onPress={() => history.push('/login')}
        />
      </View>
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#111111',
    alignItems: 'center',
    justifyContent: 'center',
  },
});

export default HomePage