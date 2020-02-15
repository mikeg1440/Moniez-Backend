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

ActiveRecord::Schema.define(version: 2020_02_15_165120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "bills", force: :cascade do |t|
    t.bigint "budget_id", null: false
    t.bigint "bill_category_id", null: false
    t.float "amount"
    t.index ["bill_category_id"], name: "index_bills_on_bill_category_id"
    t.index ["budget_id"], name: "index_bills_on_budget_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "description"
    t.integer "total", default: 0
  end

  create_table "earning_categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "earnings", force: :cascade do |t|
    t.bigint "budget_id", null: false
    t.bigint "earning_category_id", null: false
    t.float "amount"
    t.index ["budget_id"], name: "index_earnings_on_budget_id"
    t.index ["earning_category_id"], name: "index_earnings_on_earning_category_id"
  end

  create_table "expense_categories", force: :cascade do |t|
    t.string "title"
  end

  create_table "expenses", force: :cascade do |t|
    t.bigint "budget_id", null: false
    t.bigint "expense_category_id", null: false
    t.float "amount"
    t.index ["budget_id"], name: "index_expenses_on_budget_id"
    t.index ["expense_category_id"], name: "index_expenses_on_expense_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "bill_categories"
  add_foreign_key "bills", "budgets"
  add_foreign_key "earnings", "budgets"
  add_foreign_key "earnings", "earning_categories"
  add_foreign_key "expenses", "budgets"
  add_foreign_key "expenses", "expense_categories"
end
