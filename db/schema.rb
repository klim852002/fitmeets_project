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

ActiveRecord::Schema.define(version: 20161130115711) do

  create_table "comments", force: :cascade do |t|
    t.text     "message"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "event_date"
    t.datetime "event_time"
    t.string   "event_address"
    t.integer  "postal_code"
    t.integer  "players_req"
    t.string   "sports_cat"
    t.string   "event_name"
    t.text     "details"
    t.string   "picture"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "contact_number"
    t.string   "favourite_sports"
    t.string   "address"
    t.integer  "postal_code"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_events_{:id=>false}", id: false, force: :cascade do |t|
    t.integer "users_event_id",  null: false
    t.integer "{:id=>false}_id", null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_users_events_{:id=>false}_on_event_id"
    t.index ["user_id"], name: "index_users_events_{:id=>false}_on_user_id"
  end

end
