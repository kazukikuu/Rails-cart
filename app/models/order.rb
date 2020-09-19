class Order < ApplicationRecord
  has_one :order_item
end
