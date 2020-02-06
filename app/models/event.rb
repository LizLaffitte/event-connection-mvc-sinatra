class Event < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :details, presence: true
end