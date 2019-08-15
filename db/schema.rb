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

ActiveRecord::Schema.define(version: 2019_08_15_085052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidatures", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mission_id"
    t.string "cover_letter"
    t.date "start_date"
    t.date "end_date"
    t.integer "total_price"
    t.integer "daily_price"
    t.integer "num_of_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.index ["mission_id"], name: "index_candidatures_on_mission_id"
    t.index ["user_id"], name: "index_candidatures_on_user_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "description"
    t.string "company"
    t.string "logo"
    t.string "headquarter"
    t.integer "daily_price"
    t.integer "num_of_days"
    t.bigint "user_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_missions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "candidatures", "missions"
  add_foreign_key "candidatures", "users"
  add_foreign_key "missions", "users"
end
