# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170418182806) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plantings", force: :cascade do |t|
    t.integer "plant_id"
    t.string  "planting_type"
    t.date    "planting_date_begin"
    t.date    "planting_date_end"
    t.integer "days_to_harvest_from"
    t.integer "days_to_harvest_to"
    t.boolean "start_indoors"
    t.index ["plant_id"], name: "index_plantings_on_plant_id", using: :btree
  end

  create_table "plants", force: :cascade do |t|
    t.string  "name"
    t.integer "distance_between_from"
    t.integer "distance_between_to"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "readings", force: :cascade do |t|
    t.decimal  "value",       precision: 4, scale: 1
    t.string   "sensor_type"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_foreign_key "plantings", "plants"
end
