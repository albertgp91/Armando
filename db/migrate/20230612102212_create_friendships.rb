class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.references :user, foreign_key: true
      t.references :friend, foreign_key: { to_table: :users}
      t.integer :status, default: 0

      t.timestamps
    end
    add_index :friendships, [:user_id, :friend_id], unique: true
  end
end
