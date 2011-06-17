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

ActiveRecord::Schema.define(:version => 20110617151556) do

  create_table "activities", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costs", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "user_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.string   "memo"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "costs", ["activity_id"], :name => "cost_idx2"
  add_index "costs", ["user_id", "started_at"], :name => "cost_idx1", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_users", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_users", ["project_id", "user_id"], :name => "project_users_idx2", :unique => true
  add_index "project_users", ["user_id", "project_id"], :name => "project_users_idx1", :unique => true

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "project_status_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_posts", :force => true do |t|
    t.integer  "section_id"
    t.integer  "post_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "section_posts", ["post_id", "section_id"], :name => "section_posts_idx2", :unique => true
  add_index "section_posts", ["section_id", "post_id"], :name => "section_posts_idx1", :unique => true

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_section_posts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "section_post_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_section_posts", ["user_id", "section_post_id"], :name => "user_section_posts_idx1", :unique => true

  create_table "users", :force => true do |t|
    t.string   "login_code"
    t.string   "login_passwd"
    t.string   "family_name"
    t.string   "first_name"
    t.string   "family_kana_name"
    t.string   "first_kana_name"
    t.string   "email_address"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login_code"], :name => "users_idx1"

end
