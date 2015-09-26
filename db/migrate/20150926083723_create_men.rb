class CreateMen < ActiveRecord::Migration
  def change
    create_table :men do |t|
      t.string :name, null: false
      t.string :phone 
      t.text :comment 
      t.integer :type, limit: 1, null: false

      t.timestamps null: false
    end
  end
end
