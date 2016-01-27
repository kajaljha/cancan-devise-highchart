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

ActiveRecord::Schema.define(version: 20151226111939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Course", id: false, force: :cascade do |t|
    t.integer "id"
    t.string  "name", limit: 255
  end

  create_table "Empolyee", id: false, force: :cascade do |t|
    t.integer "id"
    t.string  "name",   limit: 255
    t.integer "sallry"
  end

  create_table "Info", id: false, force: :cascade do |t|
    t.integer "id"
    t.string  "address",     limit: 255
    t.string  "city",        limit: 255
    t.string  "state",       limit: 255
    t.string  "country",     limit: 255
    t.integer "pin"
    t.integer "employee_id"
  end

  create_table "Persons", id: false, force: :cascade do |t|
    t.integer "PersonID"
    t.string  "LastName",  limit: 255
    t.string  "FirstName", limit: 255
    t.string  "Address",   limit: 255
    t.string  "City",      limit: 255
  end

  create_table "User", id: false, force: :cascade do |t|
    t.integer "id"
    t.string  "name",      limit: 255
    t.integer "course_id"
  end

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type", limit: 255
    t.integer  "owner_id"
    t.string   "owner_type",     limit: 255
    t.string   "key",            limit: 255
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "ausers", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "auths", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "post_id"
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "infos", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "father_name"
    t.date     "DOB"
    t.date     "DOJ"
    t.string   "Expericence"
    t.text     "prevoius_company"
    t.text     "address"
    t.integer  "contact_no",           limit: 8
    t.integer  "Reference_contact_no", limit: 8
    t.integer  "sallry"
    t.string   "probation"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "likes"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "socials", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useers", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "admin"
    t.string   "role"
    t.integer  "roles_mask"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  add_foreign_key "identities", "users"
end
