class AddRoleToMen < ActiveRecord::Migration
  def change
  	add_column :men, :role, :integer
  end
end
