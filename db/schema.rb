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

ActiveRecord::Schema.define(version: 20140307225318) do

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.integer  "parent_company_id"
    t.string   "phone_number"
    t.boolean  "allows_text",       default: true
    t.string   "email"
    t.string   "url"
    t.text     "description"
    t.boolean  "is_main"
    t.integer  "office_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["office_id"], name: "index_contacts_on_office_id"

  create_table "offices", force: true do |t|
    t.string   "suite_number"
    t.integer  "x_coord"
    t.integer  "y_coord"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
