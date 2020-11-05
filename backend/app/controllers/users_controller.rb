class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: [ :favorites ]
    end

    def create
        if User.find_by({username: params[:username]})
            render json:{
                error: true,
                message: 'Username already exists'
            }
        else
            user = User.create({username: params[:username], password: params[:password]})
            token = JWT.encode( { id: user.id }, 'Basketball is the worlds second favorite sport.')
            render json: { user: user, token: token }
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if(user && user.authenticate(params[:password]))
            token = JWT.encode( { id: user.id }, 'Basketball is the worlds second favorite sport.')
            render( json: { user: user, token: token }, include: [ :favorites ]
            )
        else
            render( json:{
                error: true,
                message: 'Invalid credintials.'
            })
        end
    end

    def get_user
        user = self.current_user
        render( json: user, include: [ :favorites ]
        )
    end

    def edit
        user = User.find_by(username: params[:username])
        userUpdate = User.find_by(id: params[:id])
        if user && user.id != params[:id]
            render json:{
                error: true,
                message: 'Username already exists'
            }
        else
            userUpdate.update({username: params[:username]})
            render json: {user: userUpdate}, include: [ :favorites ]
        end
    end

end