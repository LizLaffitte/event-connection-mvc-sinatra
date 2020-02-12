class EventsController < ApplicationController

    #displays all events
    get '/events' do
        if logged_in?
            @events = Event.all
            erb :'/events/index'
        else
            logged_out_error
            redirect '/login'
        end
    end

    #displays form to create new events
    get '/events/new' do
        if logged_in?
            @current_datetime = DateTime.now.strftime('%Y-%m-%dT%H:%M')
            @current_categories = Category.all
            erb :'/events/new'
        else
            logged_out_error
            redirect '/login'
        end
    end

    #creates new event
    post '/events' do
        event = current_user.events.build(name: params[:name], location: params[:location] )
        if event.save
            redirect "/events/#{event.id}"
        else
            session[:current_errors] = event.errors.full_messages
            redirect '/events/new'
        end
    end

    #displays one event
    get '/events/:id' do
        if logged_in?
            @event = Event.find_by_id(params[:id])
            erb :'/events/show'
        else
            logged_out_error
            redirect '/login'
        end
    end

    #displays update/edit form
    get '/events/:id/edit' do
        @event = Event.find_by_id(params[:id])
        if logged_in?
            if  @event.user == current_user
                @current_datetime = DateTime.now.strftime('%Y-%m-%dT%H:%M')
                erb :'/events/edit'
            else
                
                redirect "/events/#{@event.id}"
            end
        else
            redirect '/login'
        end
    end

    #edits event
    patch '/events/:id' do
        @event = Event.find_by_id(params[:id])
        @event.update(:name => params[:name], :start_datetime => params[:start_datetime], :end_datetime => params[:end_datetime], :location => params[:location], :details => params[:details])
        redirect "/events/#{@event.id}"

    end

    #deletes event | validate that it belongs to user trying to delete
    delete '/events/:id' do
        event = Event.find_by_id(params[:id])
        if logged_in?
            if event.user == current_user
                event.delete
                redirect "/user/#{event.user.id}"
            else
                redirect "/events/#{event.id}"
            end
        else
            redirect '/login'
        end
    end

end