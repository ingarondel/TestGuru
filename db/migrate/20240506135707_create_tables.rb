class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table "answers", if_not_exists: true, force: :cascade do |t|
      t.string "body", null: false
      t.boolean "correct", default: false, null: false
      t.integer "question_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["question_id"], name: "index_answers_on_question_id"
    end

    create_table "categories", if_not_exists: true, force: :cascade do |t|
      t.string "title", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "gists", if_not_exists: true, force: :cascade do |t|
      t.integer "question_id", null: false
      t.integer "user_id", null: false
      t.string "gist_url"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["question_id"], name: "index_gists_on_question_id"
      t.index ["user_id"], name: "index_gists_on_user_id"
    end

    create_table "questions", if_not_exists: true, force: :cascade do |t|
      t.string "body", null: false
      t.integer "test_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["test_id"], name: "index_questions_on_test_id"
    end

    create_table "test_passages", if_not_exists: true, force: :cascade do |t|
      t.integer "user_id", null: false
      t.integer "test_id", null: false
      t.integer "current_question_id"
      t.integer "correct_question", default: 0
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["current_question_id"], name: "index_test_passages_on_current_question_id"
      t.index ["test_id"], name: "index_test_passages_on_test_id"
      t.index ["user_id"], name: "index_test_passages_on_user_id"
    end

    create_table "tests", if_not_exists: true, force: :cascade do |t|
      t.string "title", null: false
      t.integer "level", default: 0
      t.integer "category_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"
      t.index ["category_id"], name: "index_tests_on_category_id"
      t.index ["user_id"], name: "index_tests_on_user_id"
    end

    create_table "users", if_not_exists: true, force: :cascade do |t|
      t.string "email", default: "", null: false
      t.boolean "admin"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer "sign_in_count", default: 0, null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string "current_sign_in_ip"
      t.string "last_sign_in_ip"
      t.string "confirmation_token"
      t.datetime "confirmed_at"
      t.datetime "confirmation_sent_at"
      t.string "unconfirmed_email"
      t.string "type", default: "User", null: false
      t.string "first_name"
      t.string "last_name"
      t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
      t.index ["email"], name: "index_users_on_email", unique: true
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
      t.index ["type"], name: "index_users_on_type"
    end

    add_foreign_key "answers", "questions"
    add_foreign_key "gists", "questions"
    add_foreign_key "gists", "users"
    add_foreign_key "questions", "tests"
    add_foreign_key "test_passages", "tests", if_not_exists: true
    add_foreign_key "test_passages", "users", if_not_exists: true
    add_foreign_key "tests", "categories"
    add_foreign_key "tests", "users", if_not_exists: true
  end
end
