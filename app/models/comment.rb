class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user_id, presence: true
  belongs_to :post
end
