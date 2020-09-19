class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.timestamps
    end
  end
end
