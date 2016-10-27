class Game < ActiveRecord::Base
  # scope :recent, -> { order("popularity DESC").limit(10) }

  validates :name, :min_players, :max_players, :duration, :description, :img_url, :popularity, presence: true
  validates :name, :img_url, :description, uniqueness: true

  has_many :user_games
  has_many :users, through: :user_games

  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :comments

  def view_description
    self.description.gsub(/&#10;/, ' ').gsub(/&nbsp;/, ' ')
  end
end
