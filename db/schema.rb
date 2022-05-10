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

ActiveRecord::Schema.define(version: 2022_05_10_224456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.boolean "full_suspension"
    t.integer "front_travel"
    t.string "name"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_bikes_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "total_stock"
    t.boolean "pro_deal"
    t.string "name"
    t.string "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "bikes", "companies"
end
