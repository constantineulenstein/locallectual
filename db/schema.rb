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

ActiveRecord::Schema.define(version: 2019_12_02_101849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "explorers", force: :cascade do |t|
    t.integer "count"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_explorers_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.boolean "approved"
    t.text "request_message"
    t.bigint "locallect_id"
    t.bigint "explorer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["explorer_id"], name: "index_friendships_on_explorer_id"
    t.index ["locallect_id"], name: "index_friendships_on_locallect_id"
  end

  create_table "locallects", force: :cascade do |t|
    t.integer "count"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locallects_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "friendship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friendship_id"], name: "index_messages_on_friendship_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "date"
    t.string "location"
    t.bigint "locallect_id"
    t.bigint "explorer_id"
    t.bigint "friendship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["explorer_id"], name: "index_transactions_on_explorer_id"
    t.index ["friendship_id"], name: "index_transactions_on_friendship_id"
    t.index ["locallect_id"], name: "index_transactions_on_locallect_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "job"
    t.string "gender"
    t.integer "karma"
    t.string "hobby"
    t.string "base_location"
    t.string "explorer_location"
    t.integer "years_in_city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "explorers", "users"
  add_foreign_key "friendships", "explorers"
  add_foreign_key "friendships", "locallects"
  add_foreign_key "locallects", "users"
  add_foreign_key "messages", "friendships"
  add_foreign_key "messages", "users"
  add_foreign_key "transactions", "explorers"
  add_foreign_key "transactions", "friendships"
  add_foreign_key "transactions", "locallects"
end
