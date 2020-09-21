class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end


  def update
    @user = User.find_by(params[:id])
    @user.update(email: params[:email],name: params[:name],address: params[:address])
    redirect_to action: :show
  end


  private

  def user_params
    params.permit(:email, :password, :name, :address)
  end
end
