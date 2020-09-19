class CartsController < ApplicationController


  def index
    @cart = session[:cart]
    end

  def new
    @product = Product.find(params[:id])
  end

  def create
    product = product_params

    if  session[:cart].nil?
      session[:cart] = Array.new
    end
    session[:cart].push(product)
    redirect_to action: :index
    end
  def product_params
    params.permit(:id,:name,:image,:price,:quantity)
  end
  end

