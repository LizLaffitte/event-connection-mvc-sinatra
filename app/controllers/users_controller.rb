class UsersController < ApplicationController

    #display form to create new user
    get '/signup' do
        erb :'users/signup'
    end

    #create new user
    post '/signup' do
    end

    #display form to login
    get '/login' do
        erb :'/users/login'
    end

    #does user exist? | does login info match what's in the table  | set session id/log in user
    post '/login' do
    end

    #read user | profile | See events that belong to user
    get '/user/:id' do
    end

    #clear session id/log user out
    get '/logout' do
    end

end