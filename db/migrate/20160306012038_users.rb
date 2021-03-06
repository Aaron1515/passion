class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :wedding_name
      t.string :user_name
      t.string :password_hash
      t.string :p1_first_name
      t.string :p1_last_name
      t.string :p2_first_name
      t.string :p2_last_name
      t.string :phone_number
      t.string :email

      t.boolean :wedded, default: :false

      # t.string :go_fund_me_account

      t.timestamps null: :false
    end
  end
end
