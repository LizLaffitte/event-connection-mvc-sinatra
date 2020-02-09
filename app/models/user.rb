class User < ActiveRecord::Base
    has_many :events
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true

    def owns_event?(event)
        self.id == event.user_id
    end    

end