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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_115948) do
  create_table "carts", force: :cascade do |t|
    t.integer "shoe_id", null: false
    t.integer "order_id", null: false
    t.integer "user_id", null: false
    t.integer "size"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_carts_on_order_id"
    t.index ["shoe_id"], name: "index_carts_on_shoe_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "shoe_total"
    t.integer "final_total"
    t.integer "size"
    t.string "shoe_type"
    t.float "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "shoes", force: :cascade do |t|
    t.integer "category_id", null: false
    t.string "name"
    t.string "brand"
    t.integer "size"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_shoes_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "mobile"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carts", "orders"
  add_foreign_key "carts", "shoes"
  add_foreign_key "carts", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "shoes", "categories"
end
