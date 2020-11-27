class Event < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :categories
    validates :name, presence: true, length: { minimum: 3 }
    validates :start_datetime, presence: true
    validates :location, presence: true, length: { in: 3..50 }
    
    def self.eventbrite_auth
        endpoint = 'https://www.eventbriteapi.com/v3/users/me/?token=' + ENV['API_KEY']
        uri = URI.parse(URI.encode(endpoint))
        api_response = Net::HTTP.get(uri)
        response = JSON.parse(api_response)
        if response.key?("emails")
            self.eventbrite_techevents
        else
            puts "Something went wrong"
        end
    end

    def self.eventbrite_techevents
        flatiron = '17393370241'
        endpoint = 'https://www.eventbriteapi.com/v3/organizations/11407647443/events/?token=' + ENV['API_KEY']
        uri = URI.parse(URI.encode(endpoint))
        api_response = Net::HTTP.get(uri)
        response = JSON.parse(api_response)
        puts response
    end

    def format_date_long(datetime_string)
        @date_obj = DateTime.strptime(datetime_string, '%Y-%m-%dT%H:%M')
        @date_obj.strftime('%A, %B %-d, %Y, %l:%M %P')    
    end

    def format_date(datetime_string)
        datetime_string = datetime_string[0,10] 
        @date_obj = Date.strptime(datetime_string, '%Y-%m-%d')
        @date_obj.strftime('%D')    
    end

    def self.current_events
        self.all.order(start_datetime: :asc).filter{|event| event.start_datetime > DateTime.now.strftime('%Y-%m-%dT%H:%M')}
    end


end