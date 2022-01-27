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

ActiveRecord::Schema.define(version: 2022_01_25_214100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_groups", force: :cascade do |t|
    t.string "name"
    t.integer "display_order"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "area_types", force: :cascade do |t|
    t.string "name"
    t.integer "display_order"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emphasis_types", force: :cascade do |t|
    t.string "name"
    t.integer "display_order"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "emphasis_type_id"
    t.integer "area_type_id"
    t.integer "age_group_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.boolean "active", default: false, null: false
    t.string "verification_code"
    t.string "reset_code"
    t.integer "updated_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "age_groups", "users", column: "created_by"
  add_foreign_key "age_groups", "users", column: "updated_by"
  add_foreign_key "area_types", "users", column: "created_by"
  add_foreign_key "area_types", "users", column: "updated_by"
  add_foreign_key "emphasis_types", "users", column: "created_by"
  add_foreign_key "emphasis_types", "users", column: "updated_by"
  add_foreign_key "locations", "age_groups"
  add_foreign_key "locations", "area_types"
  add_foreign_key "locations", "emphasis_types"
  add_foreign_key "locations", "users"
  add_foreign_key "locations", "users", column: "created_by"
  add_foreign_key "locations", "users", column: "updated_by"
  add_foreign_key "users", "users", column: "updated_by"
end
