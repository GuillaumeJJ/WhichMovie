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

ActiveRecord::Schema.define(version: 20141106163224) do

  create_table "films", force: true do |t|
    t.string   "titre"
    t.string   "realisateur"
    t.string   "acteurs"
    t.string   "BO"
    t.string   "synopsis"
    t.date     "datesortie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
