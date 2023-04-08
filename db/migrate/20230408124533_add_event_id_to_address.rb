class AddEventIdToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column(:addresses, :event_id, :integer, null: false)
  end
end
