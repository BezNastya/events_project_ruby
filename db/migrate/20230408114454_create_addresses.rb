class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :country, length: 50, null: false, default: 'Ukraine'
      t.string :city, length: 100, null: false, default: 'Kyiv'
      t.string :region, length: 150, null: false, default: 'Kyiv'
      t.string :street, length: 100, null: false, default: 'Khreshchatyk'
      t.integer :building_number
      t.string :additional_info

      t.timestamps
    end
  end
end
