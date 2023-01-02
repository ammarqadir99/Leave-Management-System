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

ActiveRecord::Schema[7.0].define(version: 2022_12_29_140515) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "holidays", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_types", force: :cascade do |t|
    t.string "leave_name"
    t.boolean "paid_unpaid"
    t.integer "days_allowd"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaves", force: :cascade do |t|
    t.date "leave_from"
    t.date "leave_to"
    t.string "leave_status"
    t.date "approval_date"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "leave_types_id"
    t.index ["leave_types_id"], name: "index_leaves_on_leave_types_id"
    t.index ["user_id"], name: "index_leaves_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.text "password"
    t.integer "contact"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
