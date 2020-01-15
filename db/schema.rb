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

ActiveRecord::Schema.define(version: 2020_01_15_094425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artwork_id"
    t.index ["artwork_id"], name: "index_artists_on_artwork_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artist_id"
    t.bigint "exhib_id"
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
    t.index ["exhib_id"], name: "index_artworks_on_exhib_id"
  end

  create_table "exhibs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artwork_id"
    t.index ["artwork_id"], name: "index_exhibs_on_artwork_id"
  end

  add_foreign_key "artists", "artworks"
  add_foreign_key "artworks", "artists"
  add_foreign_key "artworks", "exhibs"
  add_foreign_key "exhibs", "artworks"
end
