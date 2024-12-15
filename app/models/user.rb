class User < ApplicationRecord
  validates :user_name, :email, :password, presence: true
  validates :user_name, uniqueness: true
  validates :password, length: { minimum: 8 }
  has_many :posts
  has_many :comments
end
