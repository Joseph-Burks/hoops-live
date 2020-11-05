export const initialState = {
    loggedInUser: null,
    errorMessages: {
        login: null,
        signup: null,
    },
    favSelectIsVisible: false,
    countries: [],
    country: null,
    competitions: [],
    competition: null,
    active: 'home',
    favorites: [],
    todaysGames: [],
    viewTeam: null,
    countryActive: 'leagues',
    compActive: 'scores',
    games: [],
    day: '00',
    mm: '02',
    dd: '00',
    standings: [],
    teamInput: '',
    searchResult: [],
    teamInputError: null,
    teamActive: 'scores',
    game: null,
    predictions: [],
    date: new Date(),
    userProfileVisible: false,
    editUsername: false,
    record: null
}

export const reducer  = (state, action) => {
    switch(action.type){
        case 'CHANGE_USERNAME_INPUT':
            return {
                ...state,
                usernameInput: action.value
            }
        break;
        case 'CHANGE_PASSWORD_INPUT':
            return {
                ...state,
                passwordInput: action.value
            }
        break;
        case 'SET_LOGGED_IN_USER':
            return{
                ...state,
                loggedInUser: action.user
            }
        break;
        case 'SIGN_UP_ERROR':
            return{
                ...state,
                errorMessages: {
                    ...state.errorMessages,
                    signup: action.message
                }
            }
        break;
        case 'LOG_IN_ERROR':
            return{
                ...state,
                errorMessages: {
                    ...state.errorMessages,
                    login: action.message
                }
            }
        break;
        case 'FAV_SELECT_VISIBLE_TRUE':
            return{
                ...state,
                favSelectIsVisible: true
            }
        break;
        case 'FAV_SELECT_VISIBLE_FALSE':
            return{
                ...state,
                favSelectIsVisible: false
            }
        break;
        case 'SET_COUNTRIES':
            return{
                ...state,
                countries: action.countries
            }
        break;
        case 'CHANGE_COUNTRY':
            return{
                ...state,
                country: action.country
            }
        break;
        case 'SET_COUNTRY_COMPS':
            return{
                ...state,
                competitions: action.comps
            }
        break;
        case 'SET_COMPETITION':
            return{
                ...state,
                competition: action.competition
            }
        break;
        case 'SET_TEAMS':
            return{
                ...state,
                teams: action.teams
            }
        break;
        case 'SET_HOME_ICON_SOURCE':
            return{
                ...state,
                homeIcon: action.source
            }
        break;
        case 'SET_STAR_ICON_SOURCE':
            return{
                ...state,
                starIcon: action.source
            }
        break;
        case 'SET_BARS_ICON_SOURCE':
            return{
                ...state,
                barsIcon: action.source
            }
        break;
        case 'SET_SEARCH_ICON_SOURCE':
            return{
                ...state,
                searchIcon: action.source
            }
        break;
        case 'SET_ACTIVE':
            return{
                ...state,
                active: action.active,
                favorites: [],
                todaysGames: []
            }
        break;
        case 'ADD_TEAM_TO_FAVS':
            return{
                ...state,
                favorites: [...state.favorites, action.team]
            }
        break;
        case 'SET_TODAYS_GAMES':
            return{
                ...state,
                todaysGames: action.games
            }
        break;
        case 'CHANGE_VIEW_TEAM':
            return{
                ...state,
                viewTeam: action.team
            }
        break;
        case 'CHANGE_VIEW_COMP':
            return{
                ...state,
                viewComp: action.comp
            }
        break;
        case 'SET_COUNTRY_ACTIVE':
            return{
                ...state,
                countryActive: action.active
            }
        break;
        case 'SET_COMP_ACTIVE':
            return{
                ...state,
                compActive: action.active
            }
        break;
        case 'SET_GAMES':
            return{
                ...state,
                games: action.games
            }
        break;
        case 'SET_DAY':
            return{
                ...state,
                day: action.day
            }
        break;
        case 'SET_STANDINGS':
            return{
                ...state,
                standings: action.standings
            }
        break;
        case 'CHANGE_TEAM_INPUT':
            return{
                ...state,
                teamInput: action.value
            }
        break;
        case 'SET_SEARCH_RESULT':
            return{
                ...state,
                searchResult: action.result
            }
        break;
        case 'TEAM_INPUT_ERROR':
            return{
                ...state,
                teamInputError: action.message
            }
        break;
        case 'SET_TEAM_ACTIVE':
            return{
                ...state,
                teamActive: action.active
            }
        break;
        case 'SET_GAME':
            return{
                ...state,
                game: action.game
            }
        break;
        case 'SET_PREDICTIONS':
            return{
                ...state,
                predictions: action.predictions
            }
        break;
        case 'SET_MM':
            return{
                ...state,
                mm: action.mm
            }
        break;
        case 'SET_DD':
            return{
                ...state,
                dd: action.dd
            }
        break;
        case 'SET_DATE':
            return{
                ...state,
                date: action.date
            }
        break;
        case 'USER_PROFILE_VISIBLE':
            return{
                ...state,
                userProfileVisible: action.userProfileVisible
            }
        break;
        case 'EDIT_USERNAME':
            return{
                ...state,
                editUsername: action.editUsername
            }
        break;
        case 'SET_RECORD':
            return{
                ...state,
                record: action.record
            }
        break;
    }
    return state
}