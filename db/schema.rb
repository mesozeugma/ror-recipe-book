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

ActiveRecord::Schema.define(version: 2019_05_16_100445) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.integer "unit_conversion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "required_ingredients_count", default: 0
    t.index ["name"], name: "index_ingredients_on_name", unique: true
    t.index ["unit_conversion_id"], name: "index_ingredients_on_unit_conversion_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "required_ingredients_count", default: 0
    t.index ["name"], name: "index_recipes_on_name", unique: true
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "required_ingredients", force: :cascade do |t|
    t.float "amount", null: false
    t.integer "ingredient_id", null: false
    t.integer "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id", "recipe_id"], name: "index_required_ingredients_on_ingredient_id_and_recipe_id", unique: true
    t.index ["ingredient_id"], name: "index_required_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_required_ingredients_on_recipe_id"
  end

  create_table "unit_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit_conversions_count", default: 0
    t.index ["name"], name: "index_unit_categories_on_name", unique: true
  end

  create_table "unit_conversions", force: :cascade do |t|
    t.float "rate", null: false
    t.integer "unit_id", null: false
    t.integer "unit_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ingredients_count", default: 0
    t.index ["unit_category_id"], name: "index_unit_conversions_on_unit_category_id"
    t.index ["unit_id", "unit_category_id"], name: "index_unit_conversions_on_unit_id_and_unit_category_id", unique: true
    t.index ["unit_id"], name: "index_unit_conversions_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name", null: false
    t.string "symbol", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit_conversions_count", default: 0
    t.index ["name"], name: "index_units_on_name", unique: true
    t.index ["symbol"], name: "index_units_on_symbol", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
