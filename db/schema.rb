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

ActiveRecord::Schema.define(version: 20200117141221) do

  create_table "equipment", force: :cascade do |t|
    t.text "description"
    t.string "make_manufacturer"
    t.string "country_of_origin"
    t.string "serial_number"
    t.float "quantity"
    t.datetime "acquisition_date"
    t.decimal "acquisition_cost", precision: 5, scale: 2
    t.string "estimated_useful_years"
    t.integer "year_commissioned"
    t.boolean "operational"
    t.string "out_of_order"
    t.string "operational_with_issues"
    t.boolean "unverifiable"
    t.string "department_location"
    t.float "total"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
