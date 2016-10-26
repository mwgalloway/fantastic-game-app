class UserGame < ActiveRecord::Base

  validates :game_id, :user_id, { presence: true }

end

