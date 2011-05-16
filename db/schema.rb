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

ActiveRecord::Schema.define(:version => 20110516135423) do

  create_table "featuremovattribs", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.integer  "joint_id"
    t.integer  "jointb_id"
    t.integer  "jointc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "film_users", :force => true do |t|
    t.integer  "film_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "films", :force => true do |t|
    t.string   "name"
    t.string   "titlea"
    t.string   "titleb"
    t.string   "titlec"
    t.string   "titled"
    t.string   "titlee"
    t.string   "company"
    t.string   "country"
    t.date     "start_date"
    t.date     "year_date"
    t.string   "lenght",        :limit => nil
    t.string   "color"
    t.string   "sound"
    t.string   "based_on"
    t.string   "autor"
    t.integer  "moviselect_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.integer  "salleinfo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jointbs", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jointcs", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "joints", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moviselects", :force => true do |t|
    t.string   "name",       :limit => nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "onstageattribs", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.integer  "joint_id"
    t.integer  "jointb_id"
    t.integer  "jointc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "function_id"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "salleinfoattribs", :force => true do |t|
    t.string   "name"
    t.integer  "salleinfo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salleinfos", :force => true do |t|
    t.string   "name"
    t.integer  "salle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salles", :force => true do |t|
    t.string   "name"
    t.string   "district"
    t.string   "adresse"
    t.string   "owner"
    t.string   "place"
    t.string   "orchester"
    t.string   "open"
    t.string   "source"
    t.text     "comment"
    t.integer  "ville_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shortmovattribs", :force => true do |t|
    t.string   "name"
    t.string   "based_on"
    t.integer  "film_id"
    t.integer  "joint_id"
    t.integer  "jointb_id"
    t.integer  "jointc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tecnicalattribs", :force => true do |t|
    t.string   "name"
    t.integer  "tecnical_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tecnicals", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "villes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
