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

ActiveRecord::Schema.define(version: 2019_06_17_160843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oscillators", force: :cascade do |t|
    t.float "frequency"
    t.string "wave_type"
    t.float "gain"
    t.bigint "pad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pad_id"], name: "index_oscillators_on_pad_id"
  end

  create_table "pads", force: :cascade do |t|
    t.string "key_name"
    t.float "gain"
    t.bigint "setup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["setup_id"], name: "index_pads_on_setup_id"
  end

  create_table "setups", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["user_id"], name: "index_setups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "oscillators", "pads"
  add_foreign_key "pads", "setups"
  add_foreign_key "setups", "users"
end
