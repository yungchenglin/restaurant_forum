class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.page(params[:page]).per(9)
    @categories = Category.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])  
    @comment = Comment.new
  end

  def feeds
    @recent_restaurants = Restaurant.all.order(created_at: :desc).limit(10)
    @recent_comments = Comment.all.order(created_at: :desc).limit(10)
  end

end



