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

ActiveRecord::Schema.define(version: 20160203144217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer  "user_id",                              null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "starred",              default: false
    t.boolean  "important",            default: false
    t.string   "title"
    t.datetime "message_timestamp"
    t.boolean  "read"
    t.integer  "meta_conversation_id"
  end

  add_index "conversations", ["message_timestamp"], name: "index_conversations_on_message_timestamp", using: :btree
  add_index "conversations", ["user_id"], name: "index_conversations_on_user_id", using: :btree

  create_table "message_conversation_links", force: :cascade do |t|
    t.integer  "conversation_id", null: false
    t.integer  "message_id",      null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "message_conversation_links", ["conversation_id"], name: "index_message_conversation_links_on_conversation_id", using: :btree
  add_index "message_conversation_links", ["message_id"], name: "index_message_conversation_links_on_message_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "source_address",                 null: false
    t.string   "target_address",                 null: false
    t.text     "body"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "sent",           default: false
  end

  add_index "messages", ["updated_at"], name: "index_messages_on_updated_at", using: :btree

  create_table "meta_conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname",         null: false
    t.string   "lname",         null: false
    t.string   "username",      null: false
    t.string   "session_token", null: false
    t.string   "pass_digest",   null: false
    t.date     "birthday"
    t.integer  "phone_number"
    t.string   "outside_email"
    t.string   "avatar_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
