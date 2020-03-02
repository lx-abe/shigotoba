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

ActiveRecord::Schema.define(version: 2020_03_02_021612) do

  create_table "stations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "駅名"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "workshops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "施設名称"
    t.integer "category", null: false, comment: "業態"
    t.string "address", null: false, comment: "住所"
    t.boolean "wifi", default: false, null: false, comment: "wi-fi環境有無"
    t.integer "seats_number", comment: "席数"
    t.string "opening_time", null: false, comment: "営業時間"
    t.string "price", null: false, comment: "利用料・（カフェの場合は）代表的なメニュー"
    t.text "note", comment: "特徴"
    t.bigint "station_id", comment: "駅ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["station_id"], name: "index_workshops_on_station_id"
  end

  add_foreign_key "workshops", "stations"
end
