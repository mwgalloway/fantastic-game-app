class Comment < ActiveRecord::Base

  validates :game_id, :user_id, :content, { presence: true }

  belongs_to :game
  belongs_to :user

end
