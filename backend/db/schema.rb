# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_06_233159) do

  create_table "competitions", force: :cascade do |t|
    t.integer "comp_id"
    t.string "name"
    t.string "comp_type"
    t.string "country"
    t.string "season"
  end

  create_table "countries", force: :cascade do |t|
    t.integer "country_id"
    t.string "name"
    t.string "code"
    t.string "flag_image"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
