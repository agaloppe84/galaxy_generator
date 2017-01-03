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

ActiveRecord::Schema.define(version: 20170102215922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "galaxies", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_suns"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string   "name"
    t.float    "radius"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "sun_id"
    t.float    "solar_mass"
    t.float    "solar_radius"
    t.float    "solar_distance"
    t.float    "orbital_period"
    t.float    "orbital_speed"
    t.float    "gravity"
    t.float    "temperature"
    t.string   "planet_type"
    t.boolean  "atmosphere"
    t.boolean  "water"
    t.boolean  "liquid_water"
    t.boolean  "life"
    t.float    "mass"
  end

  add_index "planets", ["sun_id"], name: "index_planets_on_sun_id", using: :btree

  create_table "suns", force: :cascade do |t|
    t.string   "name"
    t.float    "solar_distance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "galaxy_id"
    t.integer  "number_of_planets"
    t.float    "mass"
    t.float    "radius"
    t.string   "solar_type"
    t.string   "chromaticity"
    t.float    "ecliptic_distance"
    t.string   "solar_class"
  end

  add_index "suns", ["galaxy_id"], name: "index_suns_on_galaxy_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "planets", "suns"
  add_foreign_key "suns", "galaxies"
end
