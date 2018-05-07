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

ActiveRecord::Schema.define(version: 20180507002004) do

  create_table "attivita", force: :cascade do |t|
    t.date     "data"
    t.string   "titolo",      limit: 255
    t.text     "luogo",       limit: 65535
    t.text     "descrizione", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cat_libris", force: :cascade do |t|
    t.string   "nome",        limit: 255
    t.text     "descrizione", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "corsis", force: :cascade do |t|
    t.date     "data"
    t.text     "luogo",       limit: 65535
    t.string   "titolo",      limit: 255
    t.text     "contatto",    limit: 65535
    t.text     "descrizione", limit: 65535
    t.string   "visibilit",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "libris", force: :cascade do |t|
    t.string   "titolo",                   limit: 255
    t.float    "prezzo",                   limit: 24
    t.string   "autore",                   limit: 255
    t.text     "descrizione",              limit: 65535
    t.integer  "cat",                      limit: 4
    t.integer  "order",                    limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "image_file_name",          limit: 255
    t.string   "image_content_type",       limit: 255
    t.integer  "image_file_size",          limit: 4
    t.datetime "image_updated_at"
    t.string   "secondimage_file_name",    limit: 255
    t.string   "secondimage_content_type", limit: 255
    t.integer  "secondimage_file_size",    limit: 4
    t.datetime "secondimage_updated_at"
  end

  create_table "photo_attivita", force: :cascade do |t|
    t.integer  "id_attivita",        limit: 4
    t.string   "titolo",             limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "seminaris", force: :cascade do |t|
    t.date     "da"
    t.date     "al"
    t.text     "luogo",              limit: 65535
    t.string   "nazione",            limit: 255
    t.string   "titolo",             limit: 255
    t.text     "descrizione",        limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.boolean  "admin",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
