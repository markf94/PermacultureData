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

ActiveRecord::Schema.define(version: 20161029173539) do

  create_table "plants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "commonname"
    t.text     "description",        limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "species"
    t.string   "zuluname"
    t.integer  "treenumber"
    t.string   "size"
    t.string   "category"
    t.string   "origin"
    t.text     "links",              limit: 65535
    t.boolean  "nitrogen_fixer"
    t.boolean  "deciduous"
    t.boolean  "semi_deciduous"
    t.boolean  "chop_and_drop"
    t.boolean  "evergreen"
    t.boolean  "windbreak"
    t.boolean  "fire_retardent"
    t.boolean  "shade"
    t.boolean  "security"
    t.boolean  "hedge"
    t.boolean  "edible"
    t.boolean  "medicinal"
    t.boolean  "useful"
    t.boolean  "timber_furniture"
    t.boolean  "timber_building"
    t.boolean  "fire_wood"
    t.boolean  "fodder"
    t.boolean  "drought_tolerant"
    t.boolean  "salt_tolerant"
    t.boolean  "frost_tolerant"
    t.boolean  "waterlogging"
    t.boolean  "wind_resistant"
    t.boolean  "bird_attracting"
    t.boolean  "butterfly_host"
    t.boolean  "beneficial_insects"
    t.boolean  "apiculture"
    t.boolean  "bat_attractor"
    t.boolean  "attractive_flowers"
    t.boolean  "attractive_fruit"
    t.boolean  "attractive_foliage"
    t.index ["user_id"], name: "index_plants_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "votes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

end
