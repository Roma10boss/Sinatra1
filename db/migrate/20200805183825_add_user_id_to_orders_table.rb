class AddUserIdToOrdersTable < ActiveRecord::Migration
  def change
    add_column :orders, :users_id, :integer
  end
end
