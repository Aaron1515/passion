class Addresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name_of_location
      t.integer :house_number
      t.string :street_name
      t.string :city
      t.string :state, limit: 2
      t.integer :zip_code
      t.integer :user_id
    end
  end
end
