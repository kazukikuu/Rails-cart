class SessionsController < ApplicationController
  # skip_before_filter :require_login

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to controller: 'products', action: 'index'
    else
      flash.now[:alert] = 'login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to login_path
  end
end
