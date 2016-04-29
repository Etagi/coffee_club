# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160429061656) do

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.integer  "from_user_id"
    t.float    "money"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.integer  "ries_id"
    t.string   "email"
    t.string   "role"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.integer  "login_count",        default: 0,    null: false
    t.integer  "failed_login_count", default: 0,    null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",             default: true
  end

end
