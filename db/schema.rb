# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151203104304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "isaac_answers", force: :cascade do |t|
    t.integer  "isaac_question_id"
    t.text     "body"
    t.integer  "value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "isaac_answers", ["isaac_question_id"], name: "index_isaac_answers_on_isaac_question_id", using: :btree

  create_table "isaac_metric_graduations", force: :cascade do |t|
    t.integer  "isaac_metric_id"
    t.string   "name"
    t.string   "slug"
    t.integer  "min_value"
    t.integer  "max_value"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "isaac_metric_graduations", ["isaac_metric_id"], name: "index_isaac_metric_graduations_on_isaac_metric_id", using: :btree

  create_table "isaac_metric_tests", force: :cascade do |t|
    t.integer  "isaac_metric_id"
    t.integer  "isaac_test_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "isaac_metric_tests", ["isaac_metric_id"], name: "index_isaac_metric_tests_on_isaac_metric_id", using: :btree
  add_index "isaac_metric_tests", ["isaac_test_id"], name: "index_isaac_metric_tests_on_isaac_test_id", using: :btree

  create_table "isaac_metrics", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.integer  "author_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "isaac_questions", force: :cascade do |t|
    t.integer  "isaac_metric_id"
    t.text     "body"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "isaac_questions", ["isaac_metric_id"], name: "index_isaac_questions_on_isaac_metric_id", using: :btree

  create_table "isaac_results", force: :cascade do |t|
    t.integer  "isaac_test_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "probationer_name"
    t.json     "answers",          default: {}, null: false
  end

  add_index "isaac_results", ["isaac_test_id"], name: "index_isaac_results_on_isaac_test_id", using: :btree

  create_table "isaac_tests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "author_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "login"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "isaac_answers", "isaac_questions"
  add_foreign_key "isaac_metric_graduations", "isaac_metrics"
  add_foreign_key "isaac_metric_tests", "isaac_metrics"
  add_foreign_key "isaac_metric_tests", "isaac_tests"
  add_foreign_key "isaac_questions", "isaac_metrics"
  add_foreign_key "isaac_results", "isaac_tests"
end
