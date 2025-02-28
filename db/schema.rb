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

ActiveRecord::Schema[7.1].define(version: 2024_09_12_165018) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "annoucements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "company_id", null: false
    t.string "title"
    t.boolean "is_all_department", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 1
    t.index ["company_id"], name: "index_annoucements_on_company_id"
    t.index ["user_id"], name: "index_annoucements_on_user_id"
  end

  create_table "annoucements_departments", id: false, force: :cascade do |t|
    t.bigint "annoucement_id", null: false
    t.bigint "department_id", null: false
    t.index ["annoucement_id"], name: "index_annoucements_departments_on_annoucement_id"
    t.index ["department_id"], name: "index_annoucements_departments_on_department_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "title"
    t.bigint "company_id", null: false
    t.bigint "creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_boards_on_company_id"
    t.index ["creator_id"], name: "index_boards_on_creator_id"
  end

  create_table "boards_users", id: false, force: :cascade do |t|
    t.bigint "board_id", null: false
    t.bigint "user_id", null: false
    t.index ["board_id"], name: "index_boards_users_on_board_id"
    t.index ["user_id"], name: "index_boards_users_on_user_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "title"
    t.bigint "list_id", null: false
    t.integer "position"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "creator_id", null: false
    t.index ["creator_id"], name: "index_cards_on_creator_id"
    t.index ["list_id"], name: "index_cards_on_list_id"
  end

  create_table "cards_users", id: false, force: :cascade do |t|
    t.bigint "card_id", null: false
    t.bigint "user_id", null: false
    t.index ["card_id"], name: "index_cards_users_on_card_id"
    t.index ["user_id"], name: "index_cards_users_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "content"
    t.string "commentable_type", null: false
    t.bigint "commentable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
    t.index ["parent_id"], name: "index_comments_on_parent_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_departments_on_company_id"
  end

  create_table "doc_and_files", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "department_id", null: false
    t.bigint "user_id", null: false
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_doc_and_files_on_company_id"
    t.index ["department_id"], name: "index_doc_and_files_on_department_id"
    t.index ["user_id"], name: "index_doc_and_files_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.bigint "company_id", null: false
    t.string "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_events_on_company_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.bigint "board_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.index ["board_id"], name: "index_lists_on_board_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "department_id", null: false
    t.text "content"
    t.bigint "parent_message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_messages_on_department_id"
    t.index ["parent_message_id"], name: "index_messages_on_parent_message_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "title"
    t.bigint "card_id", null: false
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_steps_on_card_id"
  end

  create_table "steps_users", id: false, force: :cascade do |t|
    t.bigint "step_id", null: false
    t.bigint "user_id", null: false
    t.index ["step_id"], name: "index_steps_users_on_step_id"
    t.index ["user_id"], name: "index_steps_users_on_user_id"
  end

  create_table "to_do_lists", force: :cascade do |t|
    t.bigint "to_do_id", null: false
    t.bigint "creator_id", null: false
    t.string "name"
    t.date "due_date"
    t.string "note"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_to_do_lists_on_creator_id"
    t.index ["to_do_id"], name: "index_to_do_lists_on_to_do_id"
  end

  create_table "to_do_lists_users", id: false, force: :cascade do |t|
    t.bigint "to_do_list_id", null: false
    t.bigint "user_id", null: false
    t.index ["to_do_list_id"], name: "index_to_do_lists_users_on_to_do_list_id"
    t.index ["user_id"], name: "index_to_do_lists_users_on_user_id"
  end

  create_table "to_dos", force: :cascade do |t|
    t.string "name"
    t.bigint "company_id", null: false
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_to_dos_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.integer "role", default: 0
    t.string "position"
    t.bigint "company_id", null: false
    t.bigint "department_id", null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "annoucements", "companies"
  add_foreign_key "annoucements", "users"
  add_foreign_key "boards", "companies"
  add_foreign_key "boards", "users", column: "creator_id"
  add_foreign_key "cards", "lists"
  add_foreign_key "cards", "users", column: "creator_id"
  add_foreign_key "comments", "comments", column: "parent_id"
  add_foreign_key "comments", "users"
  add_foreign_key "departments", "companies"
  add_foreign_key "doc_and_files", "companies"
  add_foreign_key "doc_and_files", "departments"
  add_foreign_key "doc_and_files", "users"
  add_foreign_key "events", "companies"
  add_foreign_key "lists", "boards"
  add_foreign_key "messages", "departments"
  add_foreign_key "messages", "messages", column: "parent_message_id"
  add_foreign_key "messages", "users"
  add_foreign_key "steps", "cards"
  add_foreign_key "to_do_lists", "to_dos"
  add_foreign_key "to_do_lists", "users", column: "creator_id"
  add_foreign_key "to_dos", "companies"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "departments"
end
