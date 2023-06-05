class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :received_day, :datetime, default: Date.today + 15
    add_column :users, :user_name, :string
  end
end
