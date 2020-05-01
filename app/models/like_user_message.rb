class LikeUserMessage < ApplicationRecord
    belongs_to :message
    belongs_to :like
    belongs_to :user
end
