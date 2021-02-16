class Receiver < ApplicationRecord
    has_many :messages
    has_many :senders, through: :messages

    # validates :username, presence: true
    # validates :username, uniquness: true
end
