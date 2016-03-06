class Checklist < ActiveRecord::Migration
  def change
    create_table :checklist do |t|
      t.string :todo
      t.datetime :due_by
      t.boolean :completed default: false

      t.timestamps
    end
  end
end