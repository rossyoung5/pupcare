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

ActiveRecord::Schema.define(version: 20160223161244) do

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custodies", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "dog_id"
    t.boolean  "primary",    default: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "custodies", ["dog_id"], name: "index_custodies_on_dog_id"
  add_index "custodies", ["owner_id"], name: "index_custodies_on_owner_id"

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.integer  "breed_id"
    t.string   "med_conditions"
    t.integer  "vet_id"
    t.boolean  "daycare_resident"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "dogs", ["breed_id"], name: "index_dogs_on_breed_id"
  add_index "dogs", ["vet_id"], name: "index_dogs_on_vet_id"

  create_table "owners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "emergency_name"
    t.string   "emergency_phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vets", force: :cascade do |t|
    t.string   "doctor",     null: false
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vets", ["clinic_id"], name: "index_vets_on_clinic_id"

end
