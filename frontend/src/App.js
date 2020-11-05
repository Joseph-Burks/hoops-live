import React, { useEffect } from 'react';
import history from './history'
import { Route, Router } from 'react-router'
import HomePage from './components/HomePage'
import LogInPage from './components/LogInPage'
import SignUpPage from './components/SignUpPage'
import UserHome from './components/UserHome'
import Favorites from './components/Favorites'
import Competitions from './components/Competitions'
import Search from './components/Search'
import ViewCountry from './components/ViewCountry'
import ViewComp from './components/ViewComp'
import ViewTeam from './components/ViewTeam'
import Game from './components/Game'
import FavSelect from './components/FavSelect'
import { Provider, useDispatch, useSelector  } from 'react-redux';
import { store } from './store';
import URLBase from './URLBase'
import { getToken } from './storage'



function App() {
  console.disableYellowBox = true;

  const dispatch = useDispatch()

  useEffect(() => {
    // async function checkToken(){
    //   let token = await getToken()
    //   fetch(`${URLBase}/profile`, {
    //     headers: {
    //       Authorization: `Bearer ${token}`
    //     }
    //   })
    //     .then(res => res.json())
    //     .then(user => {
    //       if (!user.error) {
    //         dispatch({
    //           type: 'SET_LOGGED_IN_USER',
    //           user: user
    //         })
    //         history.push('/home')
    //       }
    //     })
    // }
    // checkToken()
  }, [])

  return (
    <Router history={history}>
      <Route exact path='/' component={() => <HomePage />}/>
      <Route exact path="/login" component={() => <LogInPage/>} />
      <Route exact path="/signup" component={() => <SignUpPage/>} />
      <Route exact path="/home" component={() => <UserHome/>} />
      <Route exact path="/favorites" component={() => <Favorites/>} />
      <Route exact path="/competitions" component={() => <Competitions/>} />
      <Route exact path="/search" component={() => <Search/>} />
      <Route exact path="/team" component={() => <ViewTeam/>} />
      <Route exact path="/country" component={() => <ViewCountry/>} />
      <Route exact path="/comp" component={() => <ViewComp/>} />
      <Route exact path="/game" component={() => <Game />} />
    </Router>
  )
}

export default () => (
  <Provider store={store}>
    <App/>
  </Provider>
)