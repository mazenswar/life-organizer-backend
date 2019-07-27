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

ActiveRecord::Schema.define(version: 2019_07_27_173638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.integer "number"
    t.bigint "month_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_id"], name: "index_days_on_month_id"
  end

  create_table "months", force: :cascade do |t|
    t.string "name"
    t.integer "month_number"
    t.integer "number_of_days"
    t.bigint "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_months_on_year_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_tasks_on_day_id"
  end

  create_table "years", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "days", "months"
  add_foreign_key "months", "years"
  add_foreign_key "tasks", "days"
end
