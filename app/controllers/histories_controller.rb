class HistoriesController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id, status: 1)
    @items = Array.new
    @total = 0

    @orders.each do |i|
      @items.push(i.order_item)
      price = i.order_item.product.price * i.order_item.quantity
      @total += price
    end
  end

  def create
    session[:cart].each do |t|
      OrderItem.create( "product_id" => t["id"],"user_id" => current_user.id, "quantity" => t["quantity"])
      Order.create("order_item_id" => OrderItem.last.id, "user_id" => current_user.id,"status"=> 1 )
    end
    session[:cart].clear
    redirect_to action: :index
  end
end
