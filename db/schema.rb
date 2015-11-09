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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151108024106) do
=======
ActiveRecord::Schema.define(version: 0) do
>>>>>>> 63dedf9a42f2109488092f3c2f2113416a0634c3

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tagline"
    t.text     "artworks_summary"
    t.string   "professional_organization"
    t.text     "exhibits_history"
    t.text     "awards_history"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "artworks", force: :cascade do |t|
    t.string   "title"
    t.integer  "artist_id"
    t.text     "description"
    t.string   "media"
    t.date     "artwork_made"
    t.string   "dimension"
    t.float    "suggest_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "artwork_id"
    t.integer  "user_id"
    t.float    "bid_amount"
    t.date     "bid_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sold_artworks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "artwork_id"
    t.float    "pay_amount"
    t.string   "pay_method"
    t.date     "pay_date"
    t.float    "shipping_cost"
    t.string   "shipping_method"
    t.string   "shipping_street"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.integer  "shipping_zipcode"
    t.string   "shipping_country"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

=======
>>>>>>> 63dedf9a42f2109488092f3c2f2113416a0634c3
end
