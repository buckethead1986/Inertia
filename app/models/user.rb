class User < ApplicationRecord
  has_secure_password
  has_many :user_challenges
  has_many :challenges, through: :user_challenges
  has_many :comments

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { maximum: 100 }
end
