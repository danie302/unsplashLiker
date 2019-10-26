class Like < ApplicationRecord
    belongs_to :user
    validates :photo_id, presence: true
end
