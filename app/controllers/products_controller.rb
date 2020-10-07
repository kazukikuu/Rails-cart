class ProductsController < ApplicationController
  skip_before_action :require_valid_token

  def index
    @product = Product.all
    render json: @product
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end
end
