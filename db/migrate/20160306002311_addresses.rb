class Addresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name_of_location
      t.string :address
      t.integer :user_id
    end
  end
end
