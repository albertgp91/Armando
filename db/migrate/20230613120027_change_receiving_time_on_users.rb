class ChangeReceivingTimeOnUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :receiving_time
    add_column :users, :receiving_time, :datetime, default: DateTime.new(2000,01,01,12,00)
  end
end
