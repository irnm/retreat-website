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

ActiveRecord::Schema.define(version: 2019_09_26_181026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrollments", force: :cascade do |t|
    t.boolean "enrolled"
    t.bigint "users_id"
    t.bigint "retreats_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["retreats_id"], name: "index_enrollments_on_retreats_id"
    t.index ["users_id"], name: "index_enrollments_on_users_id"
  end

  create_table "retreats", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.string "host"
    t.string "host_contact"
    t.integer "price"
    t.string "photo"
    t.bigint "thread_admins_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thread_admins_id"], name: "index_retreats_on_thread_admins_id"
  end

  create_table "thread_admins", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_thread_admins_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "enrollments", "retreats", column: "retreats_id"
  add_foreign_key "enrollments", "users", column: "users_id"
  add_foreign_key "retreats", "thread_admins", column: "thread_admins_id"
  add_foreign_key "thread_admins", "users"
end
