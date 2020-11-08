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

ActiveRecord::Schema.define(version: 20201108190524) do

  create_table "end_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "employee_number"
    t.string   "department"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "techs", force: :cascade do |t|
    t.string   "name"
    t.string   "tech_number"
    t.string   "department"
    t.string   "cert_level"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "ticket_number"
    t.string   "asset"
    t.string   "issue"
    t.string   "priority"
    t.string   "status"
    t.boolean  "escalated"
    t.integer  "tech_id_id"
    t.integer  "end_user_id_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["end_user_id_id"], name: "index_tickets_on_end_user_id_id"
    t.index ["tech_id_id"], name: "index_tickets_on_tech_id_id"
  end

end
