class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_item_id
      t.integer :user_id
      t.integer :status
      t.timestamps
    end
  end
end
