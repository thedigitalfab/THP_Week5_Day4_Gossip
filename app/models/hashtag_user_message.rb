class HashtagUserMessage < ApplicationRecord
    belongs_to :message
    belongs_to :hashtag
    belongs_to :user
end
