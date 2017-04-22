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

ActiveRecord::Schema.define(version: 20170422053054) do

  create_table "api_v1_categories", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.text     "description"
    t.integer  "course_count"
    t.integer  "master_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "api_v1_courses", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.string   "video_url"
    t.integer  "fans_count"
    t.integer  "uploader_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "api_v1_parents", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.string   "course_id_list"
    t.string   "children_id_list"
    t.string   "loading_info"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "api_v1_schools", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.string   "student_id_list"
    t.string   "teacher_id_list"
    t.integer  "teacher_count"
    t.integer  "student_count"
    t.string   "loading_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "api_v1_students", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.string   "course_id_list"
    t.string   "course_progress"
    t.string   "loading_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "api_v1_teachers", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.integer  "school_id"
    t.string   "student_id_list"
    t.string   "course_id_list"
    t.string   "upload_course_id_list"
    t.string   "loading_info"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "api_v1_tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "avatar"
    t.integer  "course_amount"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "concern_amount"
    t.string   "avatar"
    t.text     "description"
    t.integer  "category_id"
    t.string   "video_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.text     "description"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.string   "children_id_list"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.string   "teacher_id_list"
    t.string   "student_id_list"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.string   "account"
    t.string   "email"
    t.text     "description"
    t.string   "course_id_list"
    t.text     "course_progress"
    t.string   "loading_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "account"
    t.string   "password"
    t.string   "email"
    t.text     "description"
    t.string   "upload_course_id_list"
    t.string   "concern_course_id_list"
    t.integer  "school_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
