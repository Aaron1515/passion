class Registeries < ActiveRecord::Migration
  def change
    create_table :registeries do |t|
      t.integer :user_id
      t.string :item
      t.integer :quantity
      t.string :purchase_location
      t.boolean :purchased, default: false

      t.timestamps
    end
  end
end
