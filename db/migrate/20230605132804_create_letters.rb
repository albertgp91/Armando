class CreateLetters < ActiveRecord::Migration[7.0]
  def change
    create_table :letters do |t|
      t.string :content
      t.string :subject
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
