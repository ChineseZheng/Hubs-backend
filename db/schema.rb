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

ActiveRecord::Schema.define(version: 20170421200358) do

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
