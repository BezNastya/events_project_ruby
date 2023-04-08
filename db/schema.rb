# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_08_124533) do
  create_table "addresses", force: :cascade do |t|
    t.string "country", default: "Ukraine", null: false
    t.string "city", default: "Kyiv", null: false
    t.string "region", default: "Kyiv", null: false
    t.string "street", default: "Khreshchatyk", null: false
    t.integer "building_number"
    t.string "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name", default: "Event Custom", null: false
    t.text "description"
    t.string "tematics", default: "Sport", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
