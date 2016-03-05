class Checklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.integer :user_id
      t.string :todo
      t.boolean :done default: false

      t.timestamps
    end
  end
end
