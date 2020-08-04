class CreateOrdersTable < ActiveRecord::Migration
  def change
    create_table :orders do |t|
     t.integer :bottle
     t.integer :ounce
     t.integer :user_id
   end
  end
end
