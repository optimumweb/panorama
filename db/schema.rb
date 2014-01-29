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

ActiveRecord::Schema.define(version: 20140126181331) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "status_cd"
    t.integer  "plan_cd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "name"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "locality"
    t.string   "region"
    t.string   "country"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointment_confirmations", force: true do |t|
    t.integer  "appointment_id"
    t.string   "type_cd"
    t.string   "method_cd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointment_notifications", force: true do |t|
    t.integer  "appointment_id"
    t.string   "method_cd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.integer  "contact_id"
    t.integer  "user_id"
    t.integer  "organizer_id"
    t.datetime "datetime"
    t.integer  "address_id"
    t.string   "status_cd"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type_cd"
    t.string   "status_cd"
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal  "expected_cost", precision: 16, scale: 2
    t.decimal  "actual_cost",   precision: 16, scale: 2
    t.integer  "creator_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "author_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "salutation_cd"
    t.string   "status_cd"
    t.integer  "stage_id"
    t.decimal  "value",                 precision: 16, scale: 2
    t.integer  "quality"
    t.integer  "locale_id"
    t.string   "email"
    t.string   "tel"
    t.datetime "acquired_at"
    t.datetime "converted_at"
    t.integer  "acquisition_method_id"
    t.integer  "campaign_id"
    t.string   "utm_campaign"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_content"
    t.string   "utm_term"
    t.integer  "creator_id"
    t.integer  "assigned_user_id"
    t.integer  "team_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_layouts", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "creator_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_templates", force: true do |t|
    t.string   "name"
    t.string   "subject"
    t.integer  "layout_id"
    t.text     "body"
    t.integer  "creator_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.integer  "from_id"
    t.string   "from_type"
    t.integer  "to_id"
    t.string   "to_type"
    t.datetime "sent_at"
    t.string   "subject"
    t.text     "body"
    t.string   "status_cd"
    t.integer  "creator_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locales", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "rank"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status_cd"
    t.boolean  "is_urgent"
    t.datetime "due_at"
    t.integer  "taskable_id"
    t.string   "taskable_type"
    t.integer  "creator_id"
    t.integer  "user_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_memberships", force: true do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "status_cd"
    t.string   "level_cd"
    t.integer  "locale_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "tel"
    t.string   "stripe_customer_id"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
