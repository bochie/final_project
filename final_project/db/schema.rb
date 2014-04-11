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

ActiveRecord::Schema.define(version: 20140410012118) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "bill_addresses", force: true do |t|
    t.string   "address",        null: false
    t.string   "postal_code",    null: false
    t.string   "state_province", null: false
    t.integer  "customer_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "first_name",    null: false
    t.string   "last_name",     null: false
    t.string   "email_address", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_lists", force: true do |t|
    t.integer  "product_id",                          null: false
    t.integer  "order_id",                            null: false
    t.integer  "num_ordered",                         null: false
    t.decimal  "price",       precision: 5, scale: 2, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customers_id"
    t.decimal  "total_cost",   precision: 5, scale: 2, null: false
    t.integer  "customer_id",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_types", force: true do |t|
    t.string   "payment_type", null: false
    t.integer  "card_number",  null: false
    t.integer  "expiry_year",  null: false
    t.integer  "expiry_month", null: false
    t.integer  "customer_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name",                                null: false
    t.integer  "qty_on_hand",                         null: false
    t.decimal  "price",       precision: 5, scale: 2, null: false
    t.integer  "category_id",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "shipping_addresses" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
