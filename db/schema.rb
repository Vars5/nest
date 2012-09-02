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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120902064127) do

  create_table "apps", :force => true do |t|
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "name"
    t.string   "email"
    t.integer  "job_id"
    t.string   "coverletter_file_name"
    t.string   "coverletter_content_type"
    t.integer  "coverletter_file_size"
    t.datetime "coverletter_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "transcript_file_name"
    t.string   "transcript_content_type"
    t.integer  "transcript_file_size"
    t.datetime "transcript_updated_at"
  end

  add_index "apps", ["job_id"], :name => "index_apps_on_job_id"

  create_table "jobs", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
    t.string   "description"
    t.integer  "user_id"
  end

  add_index "jobs", ["user_id"], :name => "index_jobs_on_user_id"

  create_table "notes", :force => true do |t|
    t.text     "note"
    t.integer  "app_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "comment"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end