class Users::AuthenticationsController < ApplicationController
  def authenticate_user
    if params[:email].nil?
        render json: {error: 'Email field is blank'}, status: :bad_request
    else
      user = User.authenticate params[:email], params[:password]
      if user
        render json: {auth_token: payload(user)}, status: :ok
      else
        render json: {msg: "Invalid Username/Password"}, status: :bad_request
      end
    end
  end
end
