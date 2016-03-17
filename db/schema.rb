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

ActiveRecord::Schema.define(version: 20160317172624) do

  create_table "ambulanceinfos", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "contact1",          limit: 4
    t.integer  "contact2",          limit: 4
    t.string   "organization_name", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "ambulancelocations", force: :cascade do |t|
    t.float    "latitude",         limit: 24
    t.float    "longitude",        limit: 24
    t.string   "address",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "ambulanceinfo_id", limit: 4
  end

  add_index "ambulancelocations", ["ambulanceinfo_id"], name: "index_ambulancelocations_on_ambulanceinfo_id", using: :btree

  create_table "ambulancestatuses", force: :cascade do |t|
    t.string   "status",               limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "ambulancelocation_id", limit: 4
    t.integer  "ambulanceinfo_id",     limit: 4
  end

  add_index "ambulancestatuses", ["ambulanceinfo_id"], name: "index_ambulancestatuses_on_ambulanceinfo_id", using: :btree
  add_index "ambulancestatuses", ["ambulancelocation_id"], name: "index_ambulancestatuses_on_ambulancelocation_id", using: :btree

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ambulancelocations", "ambulanceinfos"
  add_foreign_key "ambulancestatuses", "ambulanceinfos"
  add_foreign_key "ambulancestatuses", "ambulancelocations"
end
