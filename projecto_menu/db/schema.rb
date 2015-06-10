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

ActiveRecord::Schema.define(version: 20150601212232) do

  create_table "dishes", force: true do |t|
    t.text     "description"
    t.boolean  "status"
    t.integer  "local_id"
    t.integer  "dishes_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dishes", ["dishes_type_id"], name: "index_dishes_on_dishes_type_id", using: :btree
  add_index "dishes", ["local_id"], name: "index_dishes_on_local_id", using: :btree

  create_table "dishes_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "description"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.datetime "date_menu"
    t.integer  "stock"
    t.decimal  "price",      precision: 10, scale: 0
    t.boolean  "status"
    t.integer  "user_id"
    t.integer  "local_id"
    t.integer  "week_id"
    t.integer  "dish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["dish_id"], name: "index_menus_on_dish_id", using: :btree
  add_index "menus", ["local_id"], name: "index_menus_on_local_id", using: :btree
  add_index "menus", ["user_id"], name: "index_menus_on_user_id", using: :btree
  add_index "menus", ["week_id"], name: "index_menus_on_week_id", using: :btree

  create_table "order_details", force: true do |t|
    t.integer  "cant_dishes"
    t.decimal  "price",            precision: 10, scale: 0
    t.decimal  "amount",           precision: 10, scale: 0
    t.integer  "order_headers_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["order_headers_id"], name: "index_order_details_on_order_headers_id", using: :btree

  create_table "order_headers", force: true do |t|
    t.date     "date_order"
    t.date     "date_update"
    t.date     "date_canceled"
    t.string   "observations"
    t.decimal  "amount",           precision: 10, scale: 0
    t.string   "datos_customer"
    t.string   "address_customer"
    t.string   "phone_customer"
    t.integer  "menus_id"
    t.integer  "order_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_headers", ["menus_id"], name: "index_order_headers_on_menus_id", using: :btree
  add_index "order_headers", ["order_status_id"], name: "index_order_headers_on_order_status_id", using: :btree

  create_table "order_statuses", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "dni"
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone"
    t.string   "telephone"
    t.datetime "date_of_birth"
    t.boolean  "status",                 default: false
    t.integer  "profile_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["profile_id"], name: "index_users_on_profile_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "weeks", force: true do |t|
    t.string   "name"
    t.datetime "date_inic"
    t.datetime "date_fini"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
