class AddReceiverToLetters < ActiveRecord::Migration[7.0]
  def change
    add_reference :letters, :received, foreign_key: { to_table: :users }
  end
end
