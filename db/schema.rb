# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_165247) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "default_lists", force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "gear_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_default_lists_on_activity_id"
    t.index ["gear_id"], name: "index_default_lists_on_gear_id"
  end

  create_table "gears", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.string "url"
    t.float "weight"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "packs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_packs_on_user_id"
  end

  create_table "selected_gears", force: :cascade do |t|
    t.integer "pack_id", null: false
    t.integer "gear_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gear_id"], name: "index_selected_gears_on_gear_id"
    t.index ["pack_id"], name: "index_selected_gears_on_pack_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "default_lists", "activities"
  add_foreign_key "default_lists", "gears"
  add_foreign_key "packs", "users"
  add_foreign_key "selected_gears", "gears"
  add_foreign_key "selected_gears", "packs"
end
