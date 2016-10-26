class Categorization < ActiveRecord::Base
  validates :game_id, :category_id, presence: true
  validates :game_id, uniqueness: { scope: :category_id }
end
