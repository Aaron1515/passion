class Reminders < ActiveRecord::Migration
    create_table :reminders do |t|
      t.string :todo
      t.datetime :due_by
      t.boolean :completed, default: :false

      t.timestamps
    end
end
