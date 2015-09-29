class AddKindToList < ActiveRecord::Migration
  def change
  	add_column :lists, :kind, :integer
  end
end
