class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :order_items
  has_many :product, through: :order_items

  def activate
    if !api_key
      ApiKey.create(user_id: self.id)
    else
      if !api_key.active
        api_key.set_active
        api_key.save
      end
      if !api_key.before_expired?
        api_key.set_expiration
        api_key.save
      end
        api_key
    end
  end
end
