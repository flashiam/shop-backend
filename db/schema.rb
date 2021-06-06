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

ActiveRecord::Schema.define(version: 2021_05_18_072652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carousals", force: :cascade do |t|
    t.string "img"
    t.string "altText"
    t.boolean "display"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "token"
    t.string "email"
    t.string "city"
    t.string "profile"
    t.integer "points"
    t.string "location"
    t.float "lat"
    t.float "long"
    t.datetime "last_updated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "contact"
  end

  create_table "most_sellings", force: :cascade do |t|
    t.bigint "product_id"
    t.boolean "visible"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_most_sellings_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "gross"
    t.decimal "net"
    t.decimal "taxes"
    t.decimal "discount"
    t.string "promo"
    t.date "orderDate"
    t.datetime "orderTime"
    t.string "payOrderId"
    t.string "payPaymentId"
    t.boolean "paymentStatus"
    t.binary "dileveryStatus"
    t.datetime "dileveryTime"
    t.bigint "customer_id"
    t.string "orderItems"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.decimal "priceperkg"
    t.string "subcategory"
    t.decimal "productRating"
    t.string "category"
    t.string "tags"
    t.datetime "updated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "promos", force: :cascade do |t|
    t.string "img"
    t.string "code"
    t.decimal "value"
    t.boolean "percent"
    t.date "validTill"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.text "content"
    t.date "postedOn"
    t.bigint "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_recipes_on_customer_id"
  end

  create_table "todays_deals", force: :cascade do |t|
    t.decimal "price"
    t.integer "quantity"
    t.integer "discountRate"
    t.bigint "product_id"
    t.boolean "display"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_todays_deals_on_product_id"
  end

  create_table "whies", force: :cascade do |t|
    t.text "quest"
    t.text "answer"
    t.bigint "customer_id"
    t.datetime "updatedOn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_whies_on_customer_id"
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "proids"
    t.datetime "updatedon"
    t.bigint "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_wishlists_on_customer_id"
  end

end
