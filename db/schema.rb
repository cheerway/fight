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

ActiveRecord::Schema.define(version: 20150929110345) do

  create_table "lists", force: :cascade do |t|
    t.integer  "product_id",                           null: false
    t.integer  "man_id",                               null: false
    t.decimal  "unit_price",                           null: false
    t.integer  "quantity",                             null: false
    t.decimal  "cage_weight",  precision: 2, scale: 1, null: false
    t.decimal  "total_weight", precision: 5, scale: 1, null: false
    t.date     "date"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "kind"
  end

  add_index "lists", ["product_id"], name: "index_lists_on_product_id"

  create_table "men", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "phone"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
