class ChangeReceivingDayOnUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :receiving_day, :string, array: true, default: ["Monday"]
  end
end
