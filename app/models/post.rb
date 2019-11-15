class Post < ApplicationRecord
    validates :body, presence: true, length: { minimum: 1 }

    belongs_to :user
    has_many :comments
end
