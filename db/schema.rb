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

ActiveRecord::Schema.define(version: 20180507024458) do

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "stages", default: 0, null: false
    t.integer "workflow_id"
    t.integer "travel_companion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "action_required", default: 0, null: false
    t.index ["travel_companion_id"], name: "index_projects_on_travel_companion_id"
    t.index ["workflow_id"], name: "index_projects_on_workflow_id"
  end

  create_table "travel_companion_appearances", force: :cascade do |t|
    t.string "profile_picture"
    t.string "welcome_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "travel_companions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "travel_companion_appearance_id"
    t.integer "expertise"
    t.integer "patience"
    t.integer "perfectionism"
    t.integer "ambition"
    t.integer "talkativeness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["travel_companion_appearance_id"], name: "index_travel_companions_on_travel_companion_appearance_id"
  end

  create_table "workflow_stages", force: :cascade do |t|
    t.string "name"
    t.text "default_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position", default: 0
  end

  create_table "workflow_stages_workflows", id: false, force: :cascade do |t|
    t.integer "workflow_id", null: false
    t.integer "workflow_stage_id", null: false
  end

  create_table "workflows", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
