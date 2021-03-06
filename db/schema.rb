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

ActiveRecord::Schema.define(version: 20151114235903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_infors", force: :cascade do |t|
    t.integer  "animal_id"
    t.string   "Name"
    t.string   "Sex"
    t.string   "Type"
    t.string   "Age"
    t.string   "Variety"
    t.string   "Reason"
    t.boolean  "IsSterilization"
    t.string   "Resettlement"
    t.string   "Phone"
    t.string   "Email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "animals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datalists", force: :cascade do |t|
    t.integer  "lid"
    t.string   "title"
    t.string   "category"
    t.datetime "metadata_modified"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "table_games", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "suitable_persons"
    t.integer  "price_min"
    t.integer  "price_max"
    t.integer  "recommendation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
