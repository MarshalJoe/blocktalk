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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130729191033) do

  create_table "meetings", :force => true do |t|
    t.integer  "host_id"
    t.integer  "guest_id"
    t.integer  "time_block_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "meetings_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "meeting_id"
  end

  create_table "time_blocks", :force => true do |t|
    t.datetime "start_time"
    t.integer  "meeting_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "latest_time_zone"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
