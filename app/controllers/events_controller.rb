class EventsController < ApplicationController

    #displays all events
    get '/events' do
        if logged_in?
            @user = current_user
            @events = Event.all
            erb :'/events/index'
        else
            redirect '/login'
        end
    end

    #displays form to create new events
    get '/events/new' do
        if logged_in?
            @current_datetime = DateTime.now.strftime('%Y-%m-%dT%H:%M')
            erb :'/events/new'
        else
            redirect '/login'
        end
    end

    #creates new event
    post '/events' do
        event = Event.new(params)
        event.user = current_user
        if event.save
            redirect "/events/#{event.id}"
        else
            redirect '/events/new'
        end
    end

    #displays one event
    get '/events/:id' do
        if logged_in?
            @event = Event.find_by_id(params[:id])
            erb :'/events/show'
        else
            redirect '/login'
        end
    end

    #displays update/edit form
    get '/events/:id/edit' do
        erb :'/events/edit'
    end

    #edits event
    post '/events/:id' do
        
    end

    #deletes event | validate that it belongs to user trying to delete
    delete '/events/:id' do
    end

end