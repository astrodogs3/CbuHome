class CreateCbus < ActiveRecord::Migration
  def self.up
    create_table :cbus do |t|
       t.integer :id
       t.varchar :address
       t.varchar :city
       t.varchar :state
       t.integer :zip
       t.varchar :route_number
       t.varchar :info
       t.varchar :mode
       t.varchar :cbu_type
       t.varchar :postal_purchase
       t.varchar :prvt_purchase
       t.varchar :nbu_type
       t.varchar :nbu_number
       t.varchar :parcel_locker
       t.integer :res_deliveries
       t.integer :bus_deliveries
       t.varchar :mth_installed
       t.varchar :yr_installed
       t.float :lat
       t.float :lng
       
       
       
       
      t.timestamps
    end
  end

  def self.down
    drop_table :cbus
  end
end
