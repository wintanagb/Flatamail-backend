class Sender < ApplicationRecord
    
    has_many :messages
    has_many :receivers, through: :messages

    validates :username, presence: true
    validates :username, uniquness: true
end
