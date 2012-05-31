class CreateCbus < ActiveRecord::Migration
  def self.up
    create_table :cbus do |t|
       t.integer :id
       t.string :address
       t.string :city
       t.string :state
       t.integer :zip
       t.string :route_number
       t.string :info
       t.string :mode
       t.string :cbu_type
       t.string :postal_purchase
       t.string :prvt_purchase
       t.string :nbu_type
       t.string :nbu_number
       t.string :parcel_locker
       t.integer :res_deliveries
       t.integer :bus_deliveries
       t.string :mth_installed
       t.string :yr_installed
       t.float :lat
       t.float :lng       
       
      t.timestamps
    end
  end

  def self.down
    drop_table :cbus
  end
end
