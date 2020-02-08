class Event < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true
    validates :start_datetime, presence: true
    validates :location, presence: true
    validates :details, presence: true

    def format_date(datetime_string)
        Date.new(datetime_string).strftime()    
    end


end