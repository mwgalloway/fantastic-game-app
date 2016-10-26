class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      t.integer :duration
      t.string :description
      t.string :img_url
      t.integer :popularity

      t.timestamps(null: false)
    end
  end
end
