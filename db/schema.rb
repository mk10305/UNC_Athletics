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

ActiveRecord::Schema.define(version: 20141010043713) do

  create_table "bios", id: false, force: true do |t|
    t.integer "id"
    t.text    "personal_info"
    t.text    "current_year"
    t.text    "more_info"
    t.integer "player_id"
  end

  create_table "newsletters", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string  "player_name",     limit: nil
    t.string  "player_year",     limit: nil
    t.string  "player_hometown", limit: nil
    t.text    "player_pic"
    t.integer "team_id"
  end

  create_table "teams", force: true do |t|
    t.string "team_name",       limit: nil
    t.string "gender",          limit: nil
    t.string "coach",           limit: nil
    t.string "assistant_coach", limit: nil
    t.text   "team_pic"
  end

end
