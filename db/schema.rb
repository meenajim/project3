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

ActiveRecord::Schema.define(version: 20180518123337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "families", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mealplans", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.text "mealtype"
    t.integer "veg"
    t.integer "fruit"
    t.integer "grain"
    t.integer "meat"
    t.integer "milk"
    t.integer "additional_serve"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servingguides", force: :cascade do |t|
    t.integer "usercategory_id"
    t.integer "age"
    t.integer "veg"
    t.integer "fruit"
    t.integer "grain"
    t.integer "meat"
    t.integer "milk"
    t.integer "additional_serve"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usercategories", force: :cascade do |t|
    t.text "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.string "password_digest"
    t.integer "usercategory_id"
    t.date "dob"
    t.text "email"
    t.integer "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "user_type"
    t.boolean "activated"
  end

end
