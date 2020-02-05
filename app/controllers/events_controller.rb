class EventsController < ApplicationController

    #displays all events
    get '/events' do
        erb :'/events/index'
    end

    #displays form to create new events
    get '/events/new' do
        erb :'/events/new'
    end

    #creates new event
    post '/events/' do
        
    end

    #displays one event
    get '/events/:id' do
        erb :'/events/show'
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