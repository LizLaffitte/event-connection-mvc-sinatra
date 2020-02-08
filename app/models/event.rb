class Event < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true
    validates :start_datetime, presence: true
    validates :location, presence: true
    validates :details, presence: true

    def format_date(datetime_string)
        @date_obj = Date.strptime(datetime_string, '%Y-%m-%dT%H:%M')
        @date_obj.strftime('%A')    
    end



end