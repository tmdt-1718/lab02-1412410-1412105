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

ActiveRecord::Schema.define(version: 20171016080227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blo_friends", primary_key: "blofriend_id", id: :bigint, default: -> { "nextval('blo_friends_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "blofriend"
  end

  create_table "conversations", primary_key: "conversation_id", id: :bigint, default: -> { "nextval('conversations_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "conversation_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "friends", primary_key: "friend_id", id: :bigint, default: -> { "nextval('friends_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "friend"
  end

  create_table "mem_conversations", primary_key: "mem_conversation_id", id: :bigint, default: -> { "nextval('mem_conversations_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "conversation_id"
  end

  create_table "messages", primary_key: "message_id", id: :bigint, default: -> { "nextval('messages_id_seq'::regclass)" }, force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "conversation_id"
  end

  create_table "req_friends", primary_key: "reqfriend_id", id: :bigint, default: -> { "nextval('req_friends_id_seq'::regclass)" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "addfriend"
  end

  create_table "users", primary_key: "user_id", id: :bigint, default: -> { "nextval('users_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blo_friends", "users", column: "blofriend", primary_key: "user_id"
  add_foreign_key "blo_friends", "users", primary_key: "user_id"
  add_foreign_key "conversations", "users", primary_key: "user_id"
  add_foreign_key "friends", "users", column: "friend", primary_key: "user_id"
  add_foreign_key "friends", "users", primary_key: "user_id"
  add_foreign_key "mem_conversations", "conversations", primary_key: "conversation_id"
  add_foreign_key "mem_conversations", "users", primary_key: "user_id"
  add_foreign_key "messages", "conversations", primary_key: "conversation_id"
  add_foreign_key "messages", "users", primary_key: "user_id"
  add_foreign_key "req_friends", "users", column: "addfriend", primary_key: "user_id"
  add_foreign_key "req_friends", "users", primary_key: "user_id"
end
