class RemoveTypeFromMan < ActiveRecord::Migration
  def change
  	    remove_column :men, :type, :integer
  end
end
