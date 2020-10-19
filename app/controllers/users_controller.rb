class UsersController < ApplicationController
  skip_before_action :require_valid_token
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
         render status: 200, json: { status: 200, message: '登録OK' }
    else
        render status: 400
    end
  end

  def show
    @user = User.where(access_token: params[:token])
    render json: @user
  end


  def update
    @user = User.find_by(params[:id])
    @user.update(email: params[:email],name: params[:name],address: params[:address])
    redirect_to action: :show
  end


  private

  def user_params
    params["user"]
  end
end
