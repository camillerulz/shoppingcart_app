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

ActiveRecord::Schema.define(version: 20150203135928) do

  create_table "cart_items", force: true do |t|
    t.integer  "Item_id"
    t.integer  "Cart_id"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cart_items", ["Cart_id"], name: "index_cart_items_on_Cart_id"
  add_index "cart_items", ["Item_id"], name: "index_cart_items_on_Item_id"

  create_table "carts", force: true do |t|
    t.integer  "User_id"
    t.decimal  "total"
    t.datetime "checkout_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["User_id"], name: "index_carts_on_User_id"

  create_table "items", force: true do |t|
    t.text     "description"
    t.string   "name"
    t.decimal  "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_path"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "Cart_id"
  end

  add_index "users", ["Cart_id"], name: "index_users_on_Cart_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
