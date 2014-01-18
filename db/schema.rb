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

ActiveRecord::Schema.define(version: 20140108094000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: true do |t|
    t.string   "full_name"
    t.string   "nick_name"
    t.string   "url_photo"
    t.date     "birth_day"
    t.string   "birth_city"
    t.string   "birth_state"
    t.string   "skin"
    t.string   "hair"
    t.string   "eyes"
    t.string   "religion"
    t.string   "birth_certificate"
    t.string   "book"
    t.string   "page"
    t.string   "county"
    t.string   "identification"
    t.string   "identification_agency"
    t.string   "cpf"
    t.string   "ctps"
    t.string   "voter_registry"
    t.string   "reservist_registry"
    t.string   "driver_license"
    t.string   "schooling"
    t.string   "college"
    t.string   "address"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "father_name"
    t.date     "father_birth_day"
    t.string   "father_profession"
    t.string   "father_phone_number"
    t.string   "father_civil_status"
    t.string   "father_religion"
    t.string   "mother_name"
    t.date     "mother_birth_day"
    t.string   "mother_profession"
    t.string   "mother_phone_number"
    t.string   "mother_civil_status"
    t.string   "mother_religion"
    t.string   "responsible_name"
    t.date     "responsible_birth_day"
    t.string   "responsible_profession"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.date     "admission_date"
    t.boolean  "is_student",             default: false
    t.string   "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "physical_data", force: true do |t|
    t.decimal  "heigth",            precision: 6, scale: 2
    t.decimal  "weight",            precision: 6, scale: 2
    t.decimal  "foot",              precision: 6, scale: 2
    t.decimal  "arm",               precision: 6, scale: 2
    t.decimal  "calf",              precision: 6, scale: 2
    t.string   "blood_group"
    t.string   "rh_factor"
    t.string   "biotype"
    t.decimal  "impulsion",         precision: 6, scale: 2
    t.decimal  "aerobic_endurance", precision: 6, scale: 2
    t.decimal  "flexibility",       precision: 6, scale: 2
    t.integer  "athlete_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_cares", force: true do |t|
    t.string   "name"
    t.string   "relationship"
    t.string   "phones"
    t.boolean  "health_plan"
    t.string   "health_plan_name"
    t.string   "remedies"
    t.string   "prohibited_drugs"
    t.integer  "athlete_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technical_data", force: true do |t|
    t.boolean  "right_foot",          default: false
    t.boolean  "left_foot",           default: false
    t.string   "position"
    t.string   "second_option"
    t.datetime "admission"
    t.string   "age_group"
    t.string   "registry"
    t.string   "federation_registry"
    t.integer  "athlete_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "full_name"
    t.datetime "day_of_birth"
    t.string   "address"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "identification"
    t.string   "identification_agency"
    t.string   "cpf"
    t.string   "email"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "profession"
    t.string   "registry"
    t.datetime "admission_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.datetime "confirmed_at"
    t.string   "confirmation_token"
  end

end
