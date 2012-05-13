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

ActiveRecord::Schema.define(:version => 20110516192011) do

  create_table "cbus", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus1", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus2", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus3", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus4", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus5", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_5_lat_lng", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_backup", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_davis", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_davis_lat_lng", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_dixon", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_dixon_lat_lng", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_vacaville", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_vacaville1", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_vacaville1_lat_lng", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_westSac", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_westSac_lat_lng", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_westSac_original", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_woodland", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "cbus_woodland_lat_lng", :force => true do |t|
    t.integer "zip"
    t.string  "address",         :limit => nil
    t.string  "city",            :limit => nil
    t.string  "state",           :limit => nil
    t.string  "route_number",    :limit => nil
    t.string  "info",            :limit => nil
    t.string  "mode",            :limit => nil
    t.string  "cbu_type",        :limit => nil
    t.string  "postal_purchase", :limit => nil
    t.string  "prvt_purchase",   :limit => nil
    t.string  "nbu_type",        :limit => nil
    t.string  "nbu_number",      :limit => nil
    t.string  "parcel_locker",   :limit => nil
    t.integer "res_deliveries"
    t.integer "bus_deliveries"
    t.string  "mth_installed",   :limit => nil
    t.string  "yr_installed",    :limit => nil
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "cbu_id",     :null => false
    t.integer  "order_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string  "address", :limit => nil
    t.string  "city",    :limit => nil
    t.string  "state",   :limit => nil
    t.integer "zip"
    t.decimal "lat"
    t.decimal "lng"
  end

  create_table "orders", :force => true do |t|
    t.string   "locker"
    t.string   "problem"
    t.text     "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "work_complete"
  end

  create_table "requests", :force => true do |t|
    t.string   "office_name"
    t.string   "zipcode"
    t.string   "request_person"
    t.string   "contact_phone"
    t.string   "problem_locker"
    t.string   "problem_choices"
    t.string   "problem_details"
    t.decimal  "lng"
    t.decimal  "lat"
    t.integer  "emars_workorder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zip"
    t.string   "office"
    t.string   "phone"
    t.string   "position"
    t.boolean  "access_type",     :default => false
  end

end
