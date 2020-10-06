class ApplicationController < ActionController::Base
  before_action :require_valid_token

  def not_authenticated
    redirect_to login_path, alert: "please login first"
  end

  def require_valid_token
    if login_user.nil?
      render status: 401, json: { status: 401, message: 'Unauthorized' }
    end
    token = login_user
    # binding.pry
    if User.where(access_token: token).empty?
      render status: 401, json: { status: 401, message: 'Unauthorized' }
    else
      @user = User.where(access_token: token)
    end

    if @user[0][:access_token] == token
      @user[0][:status] = true
      @user[0].save
      # render status: 200, json: { status: 200, message: '認証OK' }
    else
      render status: 401, json: { status: 401, message: 'トークンが違います' }
    end
    end



  def login_user
    params[:token]
  end
end
