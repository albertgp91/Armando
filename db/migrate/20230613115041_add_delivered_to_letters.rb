class AddDeliveredToLetters < ActiveRecord::Migration[7.0]
  def change
    add_column :letters, :delivered, :boolean, default: false
  end
end
