class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :wedding_name
      t.string :user_password
      t.string :person1
      t.string :person2
      t.string :home_address
      t.time :wedding_time
      t.time :wedding_reception_time
      t.string :wedding_location
      t.boolean :wedded
      t.date :wedding_date
      t.string :go_fund_me_account

      t.timestamps null: :false
    end
  end
end
