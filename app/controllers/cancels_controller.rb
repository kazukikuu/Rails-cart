class CancelsController < ApplicationController
  skip_before_action :require_valid_token
  def index
    token = login_user
    @user =  User.where(access_token: token)
    @orders = Order.where(user_id: @user.ids[0], status: 2)
    @items = Array.new
    @orders.each do |i|
      @items.push(id: i.order_item.product.id, name: i.order_item.product.name, price: i.order_item.product.price, quantity: i.order_item.quantity,image: i.order_item.product.image)
    end

    render json: @items
  end

  def update
    @item = Order.find(params[:id].to_i)
    @item.update(status: 2)
  end
end

