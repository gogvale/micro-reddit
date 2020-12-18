class User < ApplicationRecord
  validates :username,{ length: { minimum: 3} ,format: { with: /\A[0-9A-Za-z]+\z/,  message: 'alphanumeric only!' }, uniqueness: true }

  has_many :posts, dependent: :destroy
  has_many :comments, through: :posts, dependent: :destroy
end
