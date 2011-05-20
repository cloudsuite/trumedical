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

ActiveRecord::Schema.define(:version => 20110519183726) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "list_order"
    t.string   "title"
    t.string   "description"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "tms_part_number"
    t.integer  "category_id"
    t.string   "title"
    t.string   "description"
    t.string   "features"
    t.string   "options"
    t.decimal  "retail_price"
    t.decimal  "web_price"
    t.string   "image_url"
    t.string   "vendor"
    t.string   "vendor_sku"
    t.string   "sammons_category"
    t.string   "sammons_part_number"
    t.string   "sold_in_units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name_last"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
