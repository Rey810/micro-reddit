class Comment < ApplicationRecord
    validates :text_body, presence: true, length: { minimum: 1, maximum: 150 }
    validates :user_id, presence: true, numericality: { only_integer: true }
    validates :post_id, presence: true, numericality: { only_integer: true }

    belongs_to :user
    belongs_to :post
end
