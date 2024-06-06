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

ActiveRecord::Schema[7.1].define(version: 2024_06_06_020246) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "account_number"
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "assemblies", force: :cascade do |t|
    t.string "assembly_reg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_books", id: false, force: :cascade do |t|
    t.bigint "assembly_id", null: false
    t.bigint "book_id", null: false
    t.index ["assembly_id", "book_id"], name: "index_assemblies_books_on_assembly_id_and_book_id"
    t.index ["book_id", "assembly_id"], name: "index_assemblies_books_on_book_id_and_assembly_id"
  end

  create_table "assemblies_parts", id: false, force: :cascade do |t|
    t.bigint "assembly_id", null: false
    t.bigint "part_id", null: false
    t.index ["assembly_id", "part_id"], name: "index_assemblies_parts_on_assembly_id_and_part_id"
    t.index ["part_id", "assembly_id"], name: "index_assemblies_parts_on_part_id_and_assembly_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts_suppliers", id: false, force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.bigint "part_id", null: false
    t.index ["part_id", "supplier_id"], name: "index_parts_suppliers_on_part_id_and_supplier_id"
    t.index ["supplier_id", "part_id"], name: "index_parts_suppliers_on_supplier_id_and_part_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cnpj"
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "books", "authors"
end
