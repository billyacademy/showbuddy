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

ActiveRecord::Schema.define(version: 20150118200001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concerts", force: :cascade do |t|
    t.date     "date",       null: false
    t.string   "artist_1",   null: false
    t.string   "artist_2"
    t.string   "artist_3"
    t.string   "artist_4"
    t.integer  "venue_id",   null: false
    t.integer  "price"
    t.string   "url",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time",       null: false
  end

  add_index "concerts", ["venue_id"], name: "index_concerts_on_venue_id", using: :btree

  create_table "rsvps", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "concert_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment"
  end

  add_index "rsvps", ["user_id", "concert_id"], name: "index_rsvps_on_user_id_and_concert_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",                   null: false
    t.string   "uid",                        null: false
    t.string   "name",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",      default: false
    t.string   "image"
  end

  add_index "users", ["uid"], name: "index_users_on_uid", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "address_line_1", null: false
    t.string   "address_line_2"
    t.string   "city",           null: false
    t.string   "state",          null: false
    t.string   "zip",            null: false
    t.string   "website",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
