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

ActiveRecord::Schema.define(version: 2023_07_24_232907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.bigint "tea_id"
    t.bigint "image_id"
    t.index ["image_id"], name: "index_images_on_image_id"
    t.index ["tea_id"], name: "index_images_on_tea_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "status"
    t.integer "frequency_weeks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "tea_id"
    t.index ["tea_id"], name: "index_subscriptions_on_tea_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "teas", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.float "temperature_f"
    t.float "brew_time_seconds"
    t.float "price_usd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "full_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "images", "images"
  add_foreign_key "images", "teas"
  add_foreign_key "subscriptions", "teas"
  add_foreign_key "subscriptions", "users"
end
