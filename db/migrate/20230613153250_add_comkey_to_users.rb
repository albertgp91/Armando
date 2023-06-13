class AddComkeyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :comkey, :string

    User.all.each do |user|
      user.update!(comkey: SecureRandom.hex(2))
    end

    change_column :users, :comkey, :string, null: false
  end
end
