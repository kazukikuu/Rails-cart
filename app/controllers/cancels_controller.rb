class CancelsController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id, status: 2)
    @items = Array.new
    @orders.each do |i|
      @items.push(i.order_item)
    end
  end

  def update
    @item = Order.find(params[:id])
    @item.update(status: 2)
    redirect_to controller: 'histories', action: 'index'
  end
end

