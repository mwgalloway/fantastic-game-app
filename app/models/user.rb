class User < ActiveRecord::Base
  has_secure_password

  validates :username, :email, :password_digest, presence: true
  validates :username, :email, uniqueness: true

  has_many :user_games
  has_many :games, through: :user_games

  has_many :comments
end
