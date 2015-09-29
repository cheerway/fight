class RemoveTypeFromLists < ActiveRecord::Migration
  def change
    remove_column :lists, :type, :integer
  end
end
