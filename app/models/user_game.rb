class UserGame < ActiveRecord::Base

  validates :game_id, :user_id, { presence: true }
  validates :game_id, uniqueness: { scope: :user_id }

  belongs_to :user
  belongs_to :game

end

