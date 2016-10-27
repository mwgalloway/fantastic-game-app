class Friendship < ActiveRecord::Base
  validates :user_id, :friend_id, presence: true
end
