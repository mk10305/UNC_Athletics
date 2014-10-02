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

ActiveRecord::Schema.define(version: 20141001141854) do

  create_table "bios", force: true do |t|
    t.text    "personal_info"
    t.text    "current_year"
    t.text    "more_info"
    t.integer "player_id"
  end

  create_table "players", force: true do |t|
    t.string  "player_name"
    t.string  "player_year"
    t.string  "player_hometown"
    t.text    "player_pic"
    t.integer "team_id"
  end

  create_table "teams", force: true do |t|
    t.string "team_name"
    t.string "gender"
    t.string "coach"
    t.string "assistant_coach"
    t.string "student_coach"
    t.text   "team_pic"
  end

end
