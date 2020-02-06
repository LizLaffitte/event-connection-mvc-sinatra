class UsersController < ApplicationController

    #display form to create new user
    get '/signup' do
        if logged_in?
            redirect '/events'
        else
            erb :'users/signup'
        end
    end

    #create new user
    post '/signup' do
        user = User.new(params)
        if user.save
            session[:id] = user.id
            redirect '/events'
        else
           redirect '/signup'
        end
    end

    #display form to login
    get '/login' do
        if logged_in?
            redirect '/events'
        else
            erb :'/users/login'
        end
    end

    #does user exist? | does login info match what's in the table  | set session id/log in user
    post '/login' do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/events'
        else
           redirect '/login'
        end
    end

    #read user | profile | See events that belong to user
    get '/user/:id' do
        @user = current_user
        @user_events = Event.all.select {|event| event.user_id == current_user.id}
        erb :'/users/show'
    end

    #clear session id/log user out
    get '/logout' do
        session.clear
        redirect '/login'
    end

end