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

ActiveRecord::Schema.define(:version => 20110529160318) do

  create_table "plant_categories", :force => true do |t|
    t.string   "name",                       :null => false
    t.integer  "superior_plant_category_id"
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", :force => true do |t|
    t.integer  "project_id"
    t.integer  "plant_category_id"
    t.integer  "user_id"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.string   "memo"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plants", ["project_id"], :name => "index_plants_on_project_id"
  add_index "plants", ["user_id", "started_at"], :name => "index_plants_on_user_id_and_started_at", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "name",         :null => false
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_plant_categories", :force => true do |t|
    t.integer  "project_id",        :null => false
    t.integer  "plant_category_id", :null => false
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_plant_categories", ["plant_category_id", "project_id"], :name => "project_plant_categories_idx2", :unique => true
  add_index "project_plant_categories", ["project_id", "plant_category_id"], :name => "project_plant_categories_idx1", :unique => true

  create_table "project_report_plant_categories", :force => true do |t|
    t.integer  "project_id",        :null => false
    t.integer  "plant_category_id", :null => false
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_report_plant_categories", ["plant_category_id", "project_id"], :name => "project_report_plant_categories_idx2", :unique => true
  add_index "project_report_plant_categories", ["project_id", "plant_category_id"], :name => "project_report_plant_categories_idx1", :unique => true

  create_table "project_statuses", :force => true do |t|
    t.string   "name",         :null => false
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name",              :null => false
    t.integer  "project_status_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_posts", :force => true do |t|
    t.integer  "section_id",   :null => false
    t.integer  "post_id",      :null => false
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "section_posts", ["post_id", "section_id"], :name => "index_section_posts_on_post_id_and_section_id", :unique => true
  add_index "section_posts", ["section_id", "post_id"], :name => "index_section_posts_on_section_id_and_post_id", :unique => true

  create_table "sections", :force => true do |t|
    t.string   "name",                :null => false
    t.integer  "superior_section_id"
    t.integer  "sort_no"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_projects", :force => true do |t|
    t.integer  "user_id",      :null => false
    t.integer  "project_id",   :null => false
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_projects", ["project_id", "user_id"], :name => "index_user_projects_on_project_id_and_user_id", :unique => true
  add_index "user_projects", ["user_id", "project_id"], :name => "index_user_projects_on_user_id_and_project_id", :unique => true

  create_table "user_section_posts", :force => true do |t|
    t.integer  "user_id",      :null => false
    t.integer  "section_id",   :null => false
    t.integer  "post_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_section_posts", ["post_id"], :name => "index_user_section_posts_on_post_id"
  add_index "user_section_posts", ["section_id"], :name => "index_user_section_posts_on_section_id"
  add_index "user_section_posts", ["user_id", "section_id", "post_id"], :name => "index_user_section_posts_on_user_id_and_section_id_and_post_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "login_code",       :null => false
    t.string   "login_passwd",     :null => false
    t.string   "family_name",      :null => false
    t.string   "first_name",       :null => false
    t.string   "family_kana_name"
    t.string   "first_kana_name"
    t.string   "email_address"
    t.integer  "superior_user_id"
    t.integer  "lock_version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login_code"], :name => "index_users_on_login_code"

end
