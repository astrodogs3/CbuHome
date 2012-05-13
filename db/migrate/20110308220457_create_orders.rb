class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :locker
      t.string :problem
      t.text :description
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
