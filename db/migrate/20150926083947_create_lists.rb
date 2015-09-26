class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :product, index: true, foreign_key: true, null: false
      t.references :man, null: false
      t.decimal :unit_price, null: false
      t.integer :quantity, null: false
      t.decimal :cage_weight, null: false, precision: 2, scale: 1, defalut: 0.0
      t.decimal :total_weight, null: false, precision: 5, scale: 1
      t.date :date
      t.integer :type

      t.timestamps null: false
    end
  end
end
