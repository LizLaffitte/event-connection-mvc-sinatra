class UsersController < ApplicationController

    #display form to create new user
    get '/signup' do
        if logged_in?
            redirect '/events'
        else
            @error_message = session[:current_error].join(" ")
            if @error_message.include?("Email has already been taken")
                session[:current_error] = "You are already signed up. Try logging in."
                erb :'/users/login'
            else
                erb :'/users/signup'
            end
           
        end
    end

    #create new user
    post '/signup' do
        user = User.new(params)
        if user.save
            session[:user_id] = user.id
            redirect '/events'
        else
           user.valid?
           session[:current_error] = user.errors.full_messages
            redirect '/signup'
        end
    end

    #display form to login
    get '/login' do
        if logged_in?
            redirect '/events'
        else
            @current_error = session[:current_error]
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
        if logged_in?
            @user = current_user
            @user_events = Event.all.select {|event| event.user_id == current_user.id}
            erb :'/users/show'
        else
            redirect '/login'
        end
    end

    #clear session id/log user out
    get '/logout' do
        session.clear
        redirect '/login'
    end

end