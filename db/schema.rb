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

ActiveRecord::Schema.define(version: 20150508091038) do

  create_table "pendings", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "action",     limit: 255
    t.string   "qr",         limit: 255
    t.string   "qr_uid",     limit: 255
    t.string   "obj_type",   limit: 255
    t.integer  "obj_id",     limit: 4
    t.boolean  "enable",     limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "states", force: :cascade do |t|
    t.integer  "statenumber", limit: 4
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "user_certificates", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "devicename", limit: 255
    t.string   "cainfo",     limit: 255
    t.integer  "state",      limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_certificates", ["user_id"], name: "index_user_certificates_on_user_id", using: :btree

  create_table "user_mobilephones", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "mobileinfo", limit: 255
    t.string   "devicename", limit: 255
    t.string   "onceID",     limit: 255
    t.integer  "state",      limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_mobilephones", ["user_id"], name: "index_user_mobilephones_on_user_id", using: :btree

  create_table "user_nfcs", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "devicename", limit: 255
    t.string   "nfcinfo",    limit: 255
    t.integer  "state",      limit: 4,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_nfcs", ["user_id"], name: "index_user_nfcs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
