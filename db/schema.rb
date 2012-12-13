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

ActiveRecord::Schema.define(:version => 20121213210730) do

  create_table "foods", :force => true do |t|
    t.decimal  "ndb_no"
    t.string   "shrt_desc"
    t.decimal  "water"
    t.decimal  "energ_kcal"
    t.decimal  "protein"
    t.decimal  "lipid_tot"
    t.decimal  "ash"
    t.decimal  "carbohydrt"
    t.decimal  "fiber_td"
    t.decimal  "sugar_tot"
    t.decimal  "calcium"
    t.decimal  "iron"
    t.decimal  "magnesium"
    t.decimal  "phosphorus"
    t.decimal  "potassium"
    t.decimal  "sodium"
    t.decimal  "zinc"
    t.decimal  "copper"
    t.decimal  "manganese"
    t.decimal  "selenium"
    t.decimal  "vit_c"
    t.decimal  "thiamin"
    t.decimal  "riboflavin"
    t.decimal  "niacin"
    t.decimal  "panto_acid"
    t.decimal  "vit_b6"
    t.decimal  "folate_tot"
    t.decimal  "folic_acid"
    t.decimal  "food_folate"
    t.decimal  "folate_dfe"
    t.decimal  "vit_b12"
    t.decimal  "vit_a_iu"
    t.decimal  "vit_a_rae"
    t.decimal  "retinol"
    t.decimal  "vit_e"
    t.decimal  "vit_k"
    t.decimal  "alpha_carot"
    t.decimal  "beta_carot"
    t.decimal  "beta_crypt"
    t.decimal  "lycopene"
    t.decimal  "lut_zea"
    t.decimal  "fa_sat"
    t.decimal  "fa_mono"
    t.decimal  "fa_poly"
    t.decimal  "cholesterl"
    t.decimal  "gmwt_1"
    t.string   "gmwt_desc1"
    t.decimal  "gmwt_2"
    t.string   "gmwt_desc2"
    t.decimal  "refuse_pct"
    t.string   "name"
    t.string   "unit_of_measure"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.integer  "food_id"
    t.integer  "itemable_id"
    t.integer  "quantity"
    t.integer  "quantity_in_ounces"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "itemable_type"
  end

  add_index "ingredients", ["itemable_id", "itemable_type"], :name => "index_ingredients_on_itemable_id_and_itemable_type"

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.string   "ingredients"
    t.integer  "servings"
    t.string   "prep_time"
    t.string   "cook_time"
    t.string   "author"
    t.string   "preparation"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "image"
    t.string   "image_name"
    t.string   "remote_image_url"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
