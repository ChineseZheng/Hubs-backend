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

ActiveRecord::Schema.define(version: 20170424202309) do

  create_table "api_v1_admin_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_admins", force: :cascade do |t|
    t.string   "account"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.integer  "admin_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "api_v1_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar_url"
    t.text     "instruction"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "api_v1_courses", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar_url"
    t.integer  "category_id"
    t.text     "description"
    t.text     "instruction"
    t.string   "vedio_url"
    t.string   "vedio_avatar_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "api_v1_pendings", force: :cascade do |t|
    t.string   "avatar_url"
    t.string   "account"
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.string   "description"
    t.integer  "user_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "api_v1_progresses", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "api_v1_user_to_categories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "api_v1_user_to_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "api_v1_user_to_progresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "api_v1_user_to_users", force: :cascade do |t|
    t.integer  "fans_user_id"
    t.integer  "star_user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "api_v1_user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_v1_users", force: :cascade do |t|
    t.string   "avatar_url"
    t.string   "account"
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.string   "description"
    t.integer  "user_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
    t.index ["version_id"], name: "index_version_associations_on_version_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                         null: false
    t.integer  "item_id",                           null: false
    t.string   "event",                             null: false
    t.string   "whodunnit"
    t.text     "object",         limit: 1073741823
    t.datetime "created_at"
    t.text     "object_changes", limit: 1073741823
    t.integer  "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
    t.index ["transaction_id"], name: "index_versions_on_transaction_id"
  end

end
