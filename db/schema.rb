# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100629201601) do

  create_table "clicks", :force => true do |t|
    t.integer  "visit_id"
    t.integer  "offer_id"
    t.boolean  "converted",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  add_index "clicks", ["converted"], :name => "index_clicks_on_converted"
  add_index "clicks", ["offer_id"], :name => "index_clicks_on_offer_id"
  add_index "clicks", ["position"], :name => "index_clicks_on_position"
  add_index "clicks", ["visit_id"], :name => "index_clicks_on_visit_id"

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.decimal  "payout"
    t.string   "url"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
  end

  add_index "offers", ["active"], :name => "index_offers_on_active"

  create_table "style_files", :force => true do |t|
    t.integer  "style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  add_index "style_files", ["style_id"], :name => "index_style_files_on_style_id"

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.text     "code"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "styles", ["active"], :name => "index_styles_on_active"

  create_table "visits", :force => true do |t|
    t.integer  "style_id"
    t.string   "referrer_url"
    t.string   "referrer_keywords"
    t.integer  "referrer_page"
    t.string   "browser"
    t.string   "ip_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
