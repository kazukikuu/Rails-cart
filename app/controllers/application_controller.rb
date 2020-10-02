class ApplicationController < ActionController::Base
  before_action :require_valid_token

  def not_authenticated
    redirect_to login_path, alert: "please login first"
  end

  def require_valid_token
    puts login_user
    # if login_user.nil?
    #   return
    # end
    access_token = login_user["token"]
    @user = User.find(login_user["id"])
    if @user.access_token == access_token
      @user.status = true
      @user.save
    end
    end



  def login_user
    params[:login_user]
  end

end
