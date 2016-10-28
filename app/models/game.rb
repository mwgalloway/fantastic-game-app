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
    self.description.gsub(/&#10;/, ' ').gsub(/&nbsp;/, ' ').gsub(/&quot;/, '"').gsub(/&amp;/, '&').gsub(/&rsquo;/, "'").gsub(/&ldquo;/, '"').gsub(/&rdquo;/, '"').gsub(/&ouml;/, 'o').gsub(/&mdash;/, '--').gsub(/&ndash;/, '-')
  end

  def view_duration
    if self.duration / 60 == 0
      "#{self.duration} minutes"
    elsif self.duration / 60 == 1
      "1 hours"
    else
      "#{self.duration / 60} hours"
    end
  end

  def self.order_by_rank
    Game.all.order(:popularity)
  end
end
