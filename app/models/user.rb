class User < ApplicationRecord
  validates :username, :email, :password, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }

  has_many :posts
end
