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

ActiveRecord::Schema.define(version: 20150619190246) do

  create_table "application_roles", force: true do |t|
    t.string   "application"
    t.string   "role"
    t.string   "webtailor_string"
    t.string   "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_apps", force: true do |t|
    t.integer  "request_id"
    t.integer  "application_role_id"
    t.string   "change_indicator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "request_apps", ["application_role_id"], name: "index_request_apps_on_application_role_id"
  add_index "request_apps", ["request_id"], name: "index_request_apps_on_request_id"

  create_table "request_histories", force: true do |t|
    t.integer  "request_id"
    t.string   "status"
    t.datetime "time"
    t.string   "done_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "request_histories", ["request_id"], name: "index_request_histories_on_request_id"

  create_table "request_orgs", force: true do |t|
    t.integer  "request_id"
    t.string   "org_code"
    t.string   "change_indicator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "request_orgs", ["request_id"], name: "index_request_orgs_on_request_id"

  create_table "requests", force: true do |t|
    t.string   "req_netid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
