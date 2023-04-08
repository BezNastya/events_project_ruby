class AddBoolAdminRoleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin_role, :boolean, null:false, default:false
  end
end
