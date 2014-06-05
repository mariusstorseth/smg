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

ActiveRecord::Schema.define(version: 20140605171412) do

  create_table "clients", force: true do |t|
    t.string   "client_name"
    t.string   "invoice_street"
    t.integer  "invoice_zip"
    t.string   "invoice_city"
    t.string   "invoice_country"
    t.string   "contact_name"
    t.string   "contact_email"
    t.integer  "contact_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "clients_id"
    t.integer  "users_id"
    t.integer  "offices_id"
    t.integer  "software"
    t.integer  "software_margin"
    t.integer  "semi"
    t.integer  "semi_margin"
    t.integer  "production"
    t.integer  "production_margin"
    t.integer  "other"
    t.integer  "other_margin"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end