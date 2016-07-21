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

ActiveRecord::Schema.define(version: 20160721121520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_tags", force: :cascade do |t|
    t.integer  "blog_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_tags_on_blog_id", using: :btree
    t.index ["tag_id"], name: "index_blog_tags_on_tag_id", using: :btree
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.string   "image"
    t.string   "tagline"
    t.integer  "teaser_type",  default: 0
    t.string   "teaser_text"
    t.string   "teaser_intro"
    t.string   "teaser_image"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "project_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_images_on_project_id", using: :btree
  end

  create_table "project_tags", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_tags_on_project_id", using: :btree
    t.index ["tag_id"], name: "index_project_tags_on_tag_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.string   "product"
    t.string   "main_image"
    t.string   "teaser_image"
    t.integer  "layout",       default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blog_tags", "blogs"
  add_foreign_key "blog_tags", "tags"
  add_foreign_key "project_images", "projects"
  add_foreign_key "project_tags", "projects"
  add_foreign_key "project_tags", "tags"
end
