import React from 'react'
import { AsyncStorage } from 'react-native'


export const storeToken = async token => {
  try {
    await AsyncStorage.setItem('token', token);
  } catch (error) {
    console.log(error.message);
  }
};

export const getToken = async () => {
  let token = '';
  try {
    token = await AsyncStorage.getItem('token') || 'none';
  } catch (error) {
    console.log(error.message);
  }
  return token;
}

export const deleteToken = async () => {
  try {
    await AsyncStorage.removeItem('token');
  } catch (error) {
    console.log(error.message);
  }
}