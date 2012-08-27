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

ActiveRecord::Schema.define(:version => 20120827200653) do

  create_table "authors", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "lastname",                               :null => false
    t.string   "email",                                  :null => false
    t.string   "webpage"
    t.string   "location"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "biography"
    t.integer  "views",               :default => 0,     :null => false
    t.float    "rate",                :default => 0.0,   :null => false
    t.boolean  "deleted",             :default => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "browsers", :force => true do |t|
    t.string   "name",                          :null => false
    t.boolean  "deleted",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "technologies", :force => true do |t|
    t.string   "name",                          :null => false
    t.boolean  "deleted",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "technology_versions", :force => true do |t|
    t.string   "name",                             :null => false
    t.integer  "technology_id",                    :null => false
    t.boolean  "deleted",       :default => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.index ["technology_id"], :name => "index_technology_versions_on_technology_id"
    t.foreign_key ["technology_id"], "technologies", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "technology_versions_ibfk_1"
  end

  create_table "template_categories", :force => true do |t|
    t.string   "name",                          :null => false
    t.boolean  "deleted",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "name",                                    :null => false
    t.text     "description"
    t.integer  "author_id",                               :null => false
    t.integer  "template_category_id",                    :null => false
    t.integer  "views",                :default => 0,     :null => false
    t.float    "rate",                 :default => 0.0,   :null => false
    t.boolean  "deleted",              :default => false
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.index ["author_id"], :name => "index_templates_on_author_id"
    t.index ["template_category_id"], :name => "index_templates_on_template_category_id"
    t.foreign_key ["author_id"], "authors", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "templates_ibfk_1"
    t.foreign_key ["template_category_id"], "template_categories", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "templates_ibfk_2"
  end

  create_table "template_versions", :force => true do |t|
    t.string   "name",                                     :null => false
    t.string   "version",                                  :null => false
    t.integer  "template_id",                              :null => false
    t.integer  "technology_version_id",                    :null => false
    t.text     "change_log"
    t.boolean  "path_or_url",           :default => false, :null => false
    t.string   "path"
    t.string   "url"
    t.integer  "views",                 :default => 0,     :null => false
    t.float    "rate",                  :default => 0.0,   :null => false
    t.boolean  "active",                :default => false
    t.boolean  "deleted",               :default => false
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.index ["template_id"], :name => "index_template_versions_on_template_id"
    t.index ["technology_version_id"], :name => "index_template_versions_on_technology_version_id"
    t.foreign_key ["template_id"], "templates", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "template_versions_ibfk_1"
    t.foreign_key ["technology_version_id"], "technology_versions", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "template_versions_ibfk_2"
  end

  create_table "profiles", :force => true do |t|
    t.string   "name",                           :null => false
    t.text     "description"
    t.boolean  "deleted",     :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.integer  "author_id"
    t.integer  "profile_id"
    t.integer  "facebook_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "deleted",                :default => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.index ["email"], :name => "index_users_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
    t.index ["author_id"], :name => "index_users_on_author_id"
    t.index ["profile_id"], :name => "index_users_on_profile_id"
    t.foreign_key ["author_id"], "authors", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "users_ibfk_1"
    t.foreign_key ["profile_id"], "profiles", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "users_ibfk_2"
  end

  create_table "comments", :force => true do |t|
    t.text     "comment",                                :null => false
    t.integer  "user_id"
    t.integer  "author_id"
    t.integer  "template_id"
    t.integer  "template_version_id"
    t.integer  "which_table",                            :null => false
    t.float    "rate",                :default => 0.0,   :null => false
    t.boolean  "deleted",             :default => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.index ["user_id"], :name => "index_comments_on_user_id"
    t.index ["author_id"], :name => "index_comments_on_author_id"
    t.index ["template_id"], :name => "index_comments_on_template_id"
    t.index ["template_version_id"], :name => "index_comments_on_template_version_id"
    t.foreign_key ["user_id"], "users", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "comments_ibfk_1"
    t.foreign_key ["author_id"], "authors", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "comments_ibfk_2"
    t.foreign_key ["template_id"], "templates", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "comments_ibfk_3"
    t.foreign_key ["template_version_id"], "template_versions", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "comments_ibfk_4"
  end

  create_table "library_categories", :force => true do |t|
    t.string   "name",                          :null => false
    t.boolean  "deleted",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "libraries", :force => true do |t|
    t.string   "name",                                   :null => false
    t.text     "description"
    t.integer  "library_category_id",                    :null => false
    t.boolean  "deleted",             :default => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.index ["library_category_id"], :name => "index_libraries_on_library_category_id"
    t.foreign_key ["library_category_id"], "library_categories", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "libraries_ibfk_1"
  end

  create_table "library_versions", :force => true do |t|
    t.string   "name",                          :null => false
    t.integer  "library_id",                    :null => false
    t.boolean  "deleted",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.index ["library_id"], :name => "index_library_versions_on_library_id"
    t.foreign_key ["library_id"], "libraries", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "library_versions_ibfk_1"
  end

  create_table "template_version_browsers", :force => true do |t|
    t.integer  "template_version_id", :null => false
    t.integer  "browser_id",          :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.index ["template_version_id"], :name => "index_template_version_browsers_on_template_version_id"
    t.index ["browser_id"], :name => "index_template_version_browsers_on_browser_id"
    t.foreign_key ["template_version_id"], "template_versions", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "template_version_browsers_ibfk_1"
    t.foreign_key ["browser_id"], "browsers", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "template_version_browsers_ibfk_2"
  end

  create_table "template_version_library_versions", :force => true do |t|
    t.integer  "template_version_id", :null => false
    t.integer  "library_version_id",  :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.index ["template_version_id"], :name => "index_template_version_library_versions_on_template_version_id"
    t.index ["library_version_id"], :name => "index_template_version_library_versions_on_library_version_id"
    t.foreign_key ["template_version_id"], "template_versions", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "template_version_library_versions_ibfk_1"
    t.foreign_key ["library_version_id"], "library_versions", ["id"], :on_update => :restrict, :on_delete => :restrict, :name => "template_version_library_versions_ibfk_2"
  end

end
