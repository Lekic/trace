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

ActiveRecord::Schema.define(version: 20131002155821) do

  create_table "address_types", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.integer  "number"
    t.string   "street"
    t.string   "suburb"
    t.string   "state"
    t.integer  "postcode"
    t.integer  "address_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address_type_id"], name: "index_addresses_on_address_type_id"

  create_table "colours", force: true do |t|
    t.string   "colour"
    t.integer  "pest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "colours", ["pest_id"], name: "index_colours_on_pest_id"

  create_table "markings", force: true do |t|
    t.string   "marking"
    t.integer  "pest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "markings", ["pest_id"], name: "index_markings_on_pest_id"

  create_table "parks", force: true do |t|
    t.string   "name"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_types", force: true do |t|
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_types", ["user_id"], name: "index_person_types_on_user_id"

  create_table "pests", force: true do |t|
    t.integer  "source_id"
    t.string   "name"
    t.integer  "tracker_type_id"
    t.integer  "marking_id"
    t.integer  "colour_id"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pests", ["colour_id"], name: "index_pests_on_colour_id"
  add_index "pests", ["marking_id"], name: "index_pests_on_marking_id"
  add_index "pests", ["source_id"], name: "index_pests_on_source_id"
  add_index "pests", ["tracker_type_id"], name: "index_pests_on_tracker_type_id"

  create_table "phone_types", force: true do |t|
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_types", ["user_id"], name: "index_phone_types_on_user_id"

  create_table "phones", force: true do |t|
    t.integer  "country_code"
    t.integer  "area_code"
    t.integer  "phone"
    t.integer  "phone_type_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phone_type_id"], name: "index_phones_on_phone_type_id"

  create_table "reports", force: true do |t|
    t.datetime "date_created"
    t.integer  "creator_id"
    t.integer  "sighting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["creator_id"], name: "index_reports_on_creator_id"
  add_index "reports", ["sighting_id"], name: "index_reports_on_sighting_id"

  create_table "sightings", force: true do |t|
    t.integer  "pest_id"
    t.integer  "park_id"
    t.datetime "time_sighted"
    t.string   "information"
    t.integer  "reporter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sightings", ["park_id"], name: "index_sightings_on_park_id"
  add_index "sightings", ["pest_id"], name: "index_sightings_on_pest_id"
  add_index "sightings", ["reporter_id"], name: "index_sightings_on_reporter_id"

  create_table "sources", force: true do |t|
    t.string   "tracker_type"
    t.integer  "pest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sources", ["pest_id"], name: "index_sources_on_pest_id"

  create_table "types", force: true do |t|
    t.string   "type"
    t.integer  "pest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["pest_id"], name: "index_types_on_pest_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "date_of_birth"
    t.string   "username"
    t.string   "password"
    t.datetime "date_joined"
    t.integer  "phone_id"
    t.integer  "address_id"
    t.integer  "person_type_id"
    t.integer  "park_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["address_id"], name: "index_users_on_address_id"
  add_index "users", ["park_id"], name: "index_users_on_park_id"
  add_index "users", ["person_type_id"], name: "index_users_on_person_type_id"
  add_index "users", ["phone_id"], name: "index_users_on_phone_id"

end
