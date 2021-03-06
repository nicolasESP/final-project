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

ActiveRecord::Schema.define(version: 20160128184430) do

  create_table "attribute_measures", force: :cascade do |t|
    t.integer  "attribute_id", limit: 4
    t.string   "value",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "attribute_measures", ["attribute_id"], name: "index_attribute_measures_on_attribute_id", using: :btree

  create_table "attributes", force: :cascade do |t|
    t.integer  "entity_id",  limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "attributes", ["entity_id"], name: "index_attributes_on_entity_id", using: :btree

  create_table "entities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "category",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "attribute_measures", "attributes"
  add_foreign_key "attributes", "entities"
end
