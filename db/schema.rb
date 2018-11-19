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

ActiveRecord::Schema.define(version: 2018_11_18_073837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "measurements", force: :cascade do |t|
    t.text "name"
    t.integer "shoulder"
    t.integer "chest"
    t.integer "waist"
    t.integer "hips"
    t.integer "shirt_length"
    t.integer "sleeve_length"
    t.integer "elbow"
    t.integer "left_cuff"
    t.integer "right_cuff"
    t.integer "cuff_length"
    t.integer "collar_width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_measurements_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.decimal "unit_price", precision: 12, scale: 3
    t.integer "quantity"
    t.decimal "total_price", precision: 12, scale: 3
    t.text "collar"
    t.text "front"
    t.text "cuff"
    t.text "back"
    t.text "monogram"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.bigint "order_id"
    t.bigint "style_id"
    t.bigint "measurement_id"
    t.index ["measurement_id"], name: "index_order_items_on_measurement_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
    t.index ["style_id"], name: "index_order_items_on_style_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "subtotal"
    t.integer "shippingfee"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "color"
    t.text "brand"
    t.text "transparency"
    t.text "fabric_type"
    t.text "fabric_pattern"
    t.string "image_url_1"
    t.string "image_url_2"
    t.string "image_url_3"
    t.string "image_url_4"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "size"
    t.integer "height"
    t.integer "weight"
    t.text "belly"
    t.text "watch"
    t.text "watch_hand"
    t.text "shoulder_slope"
    t.text "measurement_method"
    t.text "street_address"
    t.integer "postal_code"
    t.integer "unit_number"
    t.integer "contact_number"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.text "name"
    t.text "collar"
    t.text "front"
    t.text "cuff"
    t.text "back"
    t.text "monogram"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_styles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "order_items", "measurements"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "order_items", "styles"
end
