# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_31_140519) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shop_menu_photos", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.bigint "shop_menu_id", null: false
    t.string "photo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_menu_photos_on_shop_id"
    t.index ["shop_menu_id"], name: "index_shop_menu_photos_on_shop_menu_id"
  end

  create_table "shop_menus", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_menus_on_shop_id"
  end

  create_table "shop_photos", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.string "photo_path"
    t.text "comment"
    t.boolean "is_published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_photos_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "main_photo_path"
    t.text "overview"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "shop_menu_photos", "shop_menus"
  add_foreign_key "shop_menu_photos", "shops"
  add_foreign_key "shop_menus", "shops"
  add_foreign_key "shop_photos", "shops"
end
