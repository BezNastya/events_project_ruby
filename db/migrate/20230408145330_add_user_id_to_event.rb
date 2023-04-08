class AddUserIdToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column(:events, :user_creator, :integer, null:false)
  end
end
