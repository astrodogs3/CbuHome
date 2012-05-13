class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
#t.column :name, :string
 t.column :address, :string
 t.column :postoffice, :string
 t.column :state, :string
 t.column :zip, :integer
 t.column :lat, :decimal
 t.column :lng, :decimal
 t.column :comments, :text
 
      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
