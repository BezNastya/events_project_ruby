class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, length: 150, null: false, default: 'Event Custom'
      t.text :description
      t.string :tematics, length: 50, null: false, default: 'Sport'

      t.timestamps
    end
  end
end
