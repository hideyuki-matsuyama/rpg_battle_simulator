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

ActiveRecord::Schema[8.0].define(version: 2019_09_13_064844) do
  create_table "creatures", charset: "utf8mb3", collation: "utf8mb3_bin", force: :cascade do |t|
    t.string "type", null: false
    t.string "name", null: false
    t.integer "strength", default: 0, null: false
    t.integer "agility", default: 0, null: false
    t.integer "toughness", default: 0, null: false
    t.integer "intelligence", default: 0, null: false
    t.integer "avoidance_power", default: 0, null: false
    t.integer "concentration_power", default: 0, null: false
    t.integer "max_avoidance_power", default: 0, null: false
    t.integer "max_concentration_power", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_creatures_on_type"
  end
end
