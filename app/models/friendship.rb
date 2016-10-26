class Friendship < ActiveRecord::Base
  validates :user1_id, :user2_id, presence: true
end
