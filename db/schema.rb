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

ActiveRecord::Schema.define(version: 20131105110958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "areas_reports", force: true do |t|
    t.integer  "area_id"
    t.integer  "report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "areas_reports", ["area_id"], name: "index_areas_reports_on_area_id", using: :btree
  add_index "areas_reports", ["report_id"], name: "index_areas_reports_on_report_id", using: :btree

  create_table "colours", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markings_pests", force: true do |t|
    t.integer  "marking_id", null: false
    t.integer  "pest_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parks", force: true do |t|
    t.integer  "park_id"
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parks", ["area_id"], name: "index_parks_on_area_id", using: :btree

  create_table "person_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pest_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pests", force: true do |t|
    t.integer  "source_id"
    t.integer  "tracker_id"
    t.string   "name"
    t.integer  "pest_type_id"
    t.string   "characteristics"
    t.integer  "colour_id"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pests", ["colour_id"], name: "index_pests_on_colour_id", using: :btree
  add_index "pests", ["pest_type_id"], name: "index_pests_on_pest_type_id", using: :btree
  add_index "pests", ["source_id"], name: "index_pests_on_source_id", using: :btree

  create_table "phone_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "employee_id"
    t.integer  "country_code",  null: false
    t.integer  "area_code",     null: false
    t.integer  "phone",         null: false
    t.integer  "phone_type_id"
    t.integer  "user_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["phone_type_id"], name: "index_phones_on_phone_type_id", using: :btree
  add_index "phones", ["user_id"], name: "index_phones_on_user_id", using: :btree

  create_table "reports", force: true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["user_id"], name: "index_reports_on_user_id", using: :btree

  create_table "reports_sightings", force: true do |t|
    t.integer  "report_id",   null: false
    t.integer  "sighting_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sightings", force: true do |t|
    t.integer  "pest_id"
    t.integer  "quantity"
    t.integer  "park_id"
    t.datetime "time_sighted"
    t.string   "information"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sightings", ["park_id"], name: "index_sightings_on_park_id", using: :btree
  add_index "sightings", ["pest_id"], name: "index_sightings_on_pest_id", using: :btree
  add_index "sightings", ["user_id"], name: "index_sightings_on_user_id", using: :btree

  create_table "sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "employee_id"
    t.string   "name"
    t.date     "date_of_birth"
    t.date     "date_joined"
    t.integer  "person_type_id"
    t.integer  "park_id"
    t.string   "contact_number"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "suburb"
    t.string   "state"
    t.integer  "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               default: "", null: false
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
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["park_id"], name: "index_users_on_park_id", using: :btree
  add_index "users", ["person_type_id"], name: "index_users_on_person_type_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
