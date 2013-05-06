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

ActiveRecord::Schema.define(:version => 20130506163716) do

  create_table "controllers", :force => true do |t|
    t.string   "Potholes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "potholes", :force => true do |t|
    t.string "creation_date"
    t.string "status"
    t.string "completion_date"
    t.string "request_number"
    t.string "service_type"
    t.string "current_activity"
    t.string "recent_action"
    t.string "potholes_filled"
    t.string "address"
    t.string "zip"
    t.string "y_coord"
    t.string "x_coord"
    t.string "ward"
    t.string "distrcit"
    t.string "community"
    t.string "latitude"
    t.string "longitude"
    t.string "location"
  end

end
