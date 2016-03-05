class Guests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :user_id

      t.string :name
      t.string :password_hash
      t.string :email
      t.string :address
      t.integer :invited_party
      t.integer :confirmed_party default: 0
      t.boolean :invited default: :false
      t.boolean :confirmation default: :false

      t.timestamps
    end
  end
end
