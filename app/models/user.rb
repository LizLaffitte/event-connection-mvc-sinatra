class User < ActiveRecord::Base
    has_many :events
    has_secure_password
    validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
    validates :email, presence: true, uniqueness: true
    validates :password, length: { in: 6..20 }

    def owns_event?(event)
        self.id == event.user_id
    end    

end