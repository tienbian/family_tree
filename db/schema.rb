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

ActiveRecord::Schema.define(version: 20150724032412) do

  create_table "families", force: :cascade do |t|
    t.integer  "person_id",     limit: 4
    t.string   "name",          limit: 255
    t.string   "description",   limit: 255
    t.date     "date_from"
    t.date     "date_to"
    t.string   "other_details", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "families", ["person_id"], name: "index_families_on_person_id", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "last_name",      limit: 255
    t.integer  "gender_id",      limit: 4
    t.date     "date_of_birth"
    t.string   "place_of_birth", limit: 255
    t.string   "other_details",  limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "people", ["gender_id"], name: "index_people_on_gender_id", using: :btree

  create_table "relationship_types", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "family_id",            limit: 4
    t.integer  "person_1_id",          limit: 4
    t.integer  "person_2_id",          limit: 4
    t.integer  "relationship_type_id", limit: 4
    t.integer  "role_1_id",            limit: 4
    t.integer  "role_2_id",            limit: 4
    t.date     "date_started"
    t.date     "date_ended"
    t.string   "other_details",        limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "relationships", ["family_id"], name: "index_relationships_on_family_id", using: :btree
  add_index "relationships", ["relationship_type_id"], name: "index_relationships_on_relationship_type_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "name",                   limit: 255, default: "", null: false
    t.string   "gender",                 limit: 1
    t.datetime "date_of_birth"
    t.string   "place_of_birth",         limit: 255
    t.string   "facebook",               limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "families", "people"
  add_foreign_key "people", "genders"
  add_foreign_key "relationships", "families"
  add_foreign_key "relationships", "relationship_types"
end
