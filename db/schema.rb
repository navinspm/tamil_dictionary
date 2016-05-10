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

ActiveRecord::Schema.define(version: 20160509035237) do

  create_table "dictionaries", id: false, force: :cascade do |t|
    t.string "Word",       limit: 37
    t.string "synonyms",   limit: 576
    t.string "antonyms",   limit: 340
    t.string "related_to", limit: 105
    t.string "origin",     limit: 2110
    t.string "slug",       limit: 255
    t.string "id",         limit: 255
  end

  add_index "dictionaries", ["id"], name: "index_dictionaries_on_id", unique: true, using: :btree

end
