class Registeries < ActiveRecord::Migration
  def change
    create_table :registeries do |t|
      t.string :item
      t.string :purchase_location
      t.boolean :purchased

      t.timestamps
    end
  end
end
