class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :order_items
  has_many :product, through: :order_items
end
