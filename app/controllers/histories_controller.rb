class HistoriesController < ApplicationController
  # skip_before_action :require_valid_token
  def index
    token = params["token"]
    @user = User.where(access_token: token )
    @orders = Order.where(user_id: @user.ids[0], status: 1)
    @items = Array.new
    @orders.each do |i|
      @items.push(order_item_id: i.order_item.id, id: i.order_item.product.id, name: i.order_item.product.name, price: i.order_item.product.price, quantity: i.order_item.quantity,image: i.order_item.product.image)
    end

    render json: @items
  end

  def create
    # binding.pry
    params_item.each do |t|
      OrderItem.create( "product_id" => t["id"],"user_id" => params_user_id.to_i, "quantity" => t["quantity"])
      Order.create("order_item_id" => OrderItem.last.id, "user_id" => params_user_id.to_i,"status"=> 1 )
    end
    # render status: 200, json: { status: 200, message: "Success" }
  end

  def params_user_id
    params["user_id"]
  end

  def params_item
    params["products"]
  end

end
