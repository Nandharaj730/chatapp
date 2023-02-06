class User < ApplicationRecord
    has_secure_password
    has_many :room_user_matches
    has_many :messages
    
    validates :email , presence: true , length: { minimum:5 , maximum: 30 } 
    validates :username , presence: true , length: { minimum: 5 , maximum: 20 }
    validates :password , presence: true , length: { minimum: 8 }
end
