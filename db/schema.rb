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

ActiveRecord::Schema.define(version: 20140501131805) do

  create_table "forums", force: true do |t|
    t.string   "titre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "contenu"
    t.datetime "date"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["topic_id"], name: "index_messages_on_topic_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "topics", force: true do |t|
    t.string   "titre"
    t.integer  "forum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["forum_id"], name: "index_topics_on_forum_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "password_reset_token"
    t.datetime "password_expires_after"
    t.string   "authentication_token"
    t.datetime "last_signed_in_on"
    t.datetime "signed_up_on"
  end

end
