class ProductsController < ApplicationController
  before_action :require_login
  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
