class Guests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :user_id
      t.string :name
      t.string :guest_password
      t.string :address
      t.integer :party
      t.boolean :invited
      t.boolean :confirmation

      t.timestamps
    end
  end
end
