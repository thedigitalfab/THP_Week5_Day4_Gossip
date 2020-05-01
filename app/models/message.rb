class Message < ApplicationRecord
    belongs_to :sender, class_name: "User"
    belongs_to :recipient, class_name: "User"
    belongs_to :parent, class_name: "Message"
    has_many :like_messages, dependent: destroy
    has_many :likes, through :like_messages
    has_many :hashtag_messages, dependent: destroy
    has_many :hastags, through :hashtag_messages
end
