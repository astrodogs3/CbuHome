class OrdersAddCompleteField < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.boolean :work_complete, :default => false
    end
  end

  def self.down
    remove_column :order, :work_complete
  end
end
