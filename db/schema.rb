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

ActiveRecord::Schema[7.0].define(version: 2023_08_25_155714) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "code"
    t.integer "pages"
    t.integer "tiragem"
    t.string "selo"
    t.date "delivery_date"
    t.string "fitilho"
    t.string "cabeceado"
    t.string "pintura_lateral"
    t.boolean "sticker"
    t.boolean "encartes"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_type"
    t.string "cover_format"
    t.string "cover_paper"
    t.string "cover_colors"
    t.string "cover_finish"
    t.string "guarda_format"
    t.string "guarda_paper"
    t.string "guarda_colors"
    t.string "guarda_finish"
    t.string "miolo_format"
    t.string "miolo_paper"
    t.string "miolo_colors"
    t.string "miolo_finish"
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "guardas", force: :cascade do |t|
    t.string "guarda_format"
    t.string "guarda_paper"
    t.string "guarda_colors"
    t.string "guarda_finish"
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_guardas_on_book_id"
  end

  create_table "miolos", force: :cascade do |t|
    t.string "miolo_format"
    t.string "miolo_paper"
    t.string "miolo_colors"
    t.string "miolo_finish"
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_miolos_on_book_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", limit: 20, default: ""
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "books", "users"
  add_foreign_key "guardas", "books"
  add_foreign_key "miolos", "books"
end