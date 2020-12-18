class Post < ApplicationRecord
  validates :title, {length: {minimum: 5}, uniqueness: { scope: :user_id} }
  validates :link, format: {with: /\A(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/}
  belongs_to :user
  has_many :comments, dependent: :destroy
end
