class Event < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :categories
    validates :name, presence: true, length: { minimum: 3 }
    validates :start_datetime, presence: true
    validates :location, presence: true, length: { in: 3..50 }

    def format_date_long(datetime_string)
        @date_obj = DateTime.strptime(datetime_string, '%Y-%m-%dT%H:%M')
        @date_obj.strftime('%A, %B %-d, %Y, %l:%M %P')    
    end

    def format_date(datetime_string)
        datetime_string = datetime_string[0,10] 
        @date_obj = Date.strptime(datetime_string, '%Y-%m-%d')
        @date_obj.strftime('%D')    
    end

end