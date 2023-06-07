class ChangeReceivingDayToArrayOnUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :receiving_day
    add_column :users, :receiving_day, :string, array: true, default: []
  end
end
