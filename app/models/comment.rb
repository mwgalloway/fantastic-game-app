class Comment < ActiverRecord::Base

  validates: :game_id, :user_id, :content { presence: true }

end
