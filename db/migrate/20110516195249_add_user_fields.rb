class AddUserFields < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.integer :zip
      t.string :office
      t.string :phone
      t.string :position
      t.boolean :ops_access, :default => false
      t.boolean :maint_access, :default => false      
    end
  end

  def self.down
    remove_column :users, :maint_access
    rename_column :users, :ops_access, :access_type
  end
end
