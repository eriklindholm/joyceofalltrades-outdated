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

ActiveRecord::Schema.define(version: 20160908141305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_taggings", force: :cascade do |t|
    t.integer  "blog_id"
    t.integer  "blog_tag_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["blog_id"], name: "index_blog_taggings_on_blog_id", using: :btree
    t.index ["blog_tag_id"], name: "index_blog_taggings_on_blog_tag_id", using: :btree
  end

  create_table "blog_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.string   "main_image"
    t.string   "tagline"
    t.integer  "teaser_type",  default: 0
    t.string   "teaser_text"
    t.string   "teaser_intro"
    t.string   "teaser_image"
    t.string   "url_alias"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "enquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plays", force: :cascade do |t|
    t.string   "name"
    t.string   "tagline"
    t.string   "teaser_image"
    t.string   "main_image"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "project_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_images_on_project_id", using: :btree
  end

  create_table "project_taggings", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "project_tag_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["project_id"], name: "index_project_taggings_on_project_id", using: :btree
    t.index ["project_tag_id"], name: "index_project_taggings_on_project_tag_id", using: :btree
  end

  create_table "project_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.string   "product"
    t.string   "main_image"
    t.string   "teaser_image"
    t.integer  "layout",       default: 0
    t.string   "url_alias"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "project_images", "projects"
end
