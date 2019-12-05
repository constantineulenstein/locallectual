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

ActiveRecord::Schema.define(version: 2019_12_05_030463) do

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
    t.boolean "declined"
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

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
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
    t.string "photo"
    t.string "city_image"
    t.datetime "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "explorers", "users"
  add_foreign_key "friendships", "explorers"
  add_foreign_key "friendships", "locallects"
  add_foreign_key "locallects", "users"
  add_foreign_key "messages", "friendships"
  add_foreign_key "messages", "users"
  add_foreign_key "taggings", "tags"
  add_foreign_key "transactions", "explorers"
  add_foreign_key "transactions", "friendships"
  add_foreign_key "transactions", "locallects"
end
