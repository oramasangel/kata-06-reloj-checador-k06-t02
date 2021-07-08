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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Admin", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "user", null: false
    t.string "password", null: false
  end

  create_table "attendance", id: false, force: :cascade do |t|
    t.date "date", null: false
    t.integer "id_employeed", null: false
    t.integer "id_cbranch", null: false
    t.integer "private_num", null: false
    t.index ["id_cbranch"], name: "fki_fk_cbranch"
    t.index ["id_employeed"], name: "fki_fk_employeed"
  end

  create_table "company_branches", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.text "name", null: false
    t.text "Adress", null: false
  end

  create_table "employeed", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "num_employeed", null: false
    t.integer "private_num", null: false
    t.text "email", null: false
    t.text "name", null: false
    t.text "position", null: false
  end

  add_foreign_key "attendance", "company_branches", column: "id_cbranch", primary_key: "Id", name: "fk_cbranch"
  add_foreign_key "attendance", "employeed", column: "id_employeed", primary_key: "Id", name: "fk_employeed", on_update: :restrict, on_delete: :restrict
end
