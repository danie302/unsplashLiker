class User < ApplicationRecord
    has_many :likes
    validates :name, presence: true
end
