class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.string :confirmed, default: "pending"

      t.timestamps null: false
    end
  end
end
