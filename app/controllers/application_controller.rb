class ApplicationController < ActionController::API
  before_action :authenticate_user

  def authenticate_user
    if auth_header
      @user = User.find_by(authentication_token: auth_header)
      @user
    else
      render status: :unauthorized
    end
  end

  private

  def auth_header
    request.headers[:bearer]
  end

end
