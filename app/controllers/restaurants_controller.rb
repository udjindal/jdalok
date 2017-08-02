class RestaurantsController < ApplicationController
  def index
    city = params[:city]
    restaurants = Restaurant.where(city: city.downcase)
    render json: {restaurants: restaurants}, status: :ok
  end

  def show
    restaurant = Restaurant.find_by(id: params[:id])
    render json: {restaurant: restaurant}, status: :ok
  end

  def create
    Restaurant.create(city: params[:city], nameurl: params[:url], address: params[:address], contact_info: params[:contact_info])
    render json: {msg: "Restaurant added successfully"}, status: :ok
  end
end
