class Users::RegistrationsController < ApplicationController
  def create
    user = User.create(email: params[:email], password: params[:password], name: params[:name])
    if user
      render json: {msg: 'user added successfully'}, status: :ok
    else
      render json: {msg: "missing params"}, status: :bad_request
    end
  end
end
