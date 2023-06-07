class AddReceivingTimeOnUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :receiving_time, :time, default: Time.now
  end
end
