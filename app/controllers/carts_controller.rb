class CartsController < ApplicationController


  def index
    @carts = session[:cart]
    @carts ||= []
    @total = 0
      @carts.each do |t|
        price =  t["price"].to_i * t["quantity"].to_i
        @total += price
    end


    end

  def new
    @product = Product.find(params[:id])
  end

  def create
    if  session[:cart].nil?
      session[:cart] = Array.new
    end
    session[:cart].push(product_params)
    redirect_to action: :index
  end

  def plus
    hash = session[:cart][params[:id].to_i]
    num = hash["quantity"].to_i
    num += 1
    hash.update({quantity: num })
    redirect_to action: :index
  end

  def minus
    hash = session[:cart][params[:id].to_i]
    num = hash["quantity"].to_i
    num -= 1
    if num <= 0
      session[:cart].delete(session[:cart][params[:id].to_i])
    end

    hash.update({quantity: num })
    redirect_to action: :index
  end

  def empty
    session[:cart].clear
    redirect_to action: :index
  end

  def destroy
    # session[:cart][params[:id].to_i]
    session[:cart].delete(session[:cart][params[:id].to_i])
    redirect_to action: :index
  end

  def product_params
    params.permit(:id,:name,:image,:price,:quantity)
  end


  end

