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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110202003728) do

  create_table "addresses", :force => true do |t|
    t.integer  "contact_id"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.boolean  "default"
    t.string   "user_id"
    t.boolean  "current"
    t.datetime "creationdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affiliations", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "company_id"
    t.string   "affiliation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collectibles", :force => true do |t|
    t.integer  "contact_id"
    t.string   "piece"
    t.integer  "year"
    t.string   "artist"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "user_id"
    t.datetime "creationdate"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "creationdate"
    t.datetime "lastupdatedate"
    t.integer  "createduser_id"
    t.integer  "lastupdateuser_id"
    t.string   "companyassociation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "company_id"
    t.string   "position"
    t.boolean  "current"
    t.integer  "user_id"
    t.datetime "creationddate"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies", :force => true do |t|
    t.integer  "contact_id"
    t.string   "hobby"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parenthoods", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "parenthood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.integer  "contact_id"
    t.boolean  "default"
    t.string   "filename"
    t.integer  "user_id"
    t.datetime "creationdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
