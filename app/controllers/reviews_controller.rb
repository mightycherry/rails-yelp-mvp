class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]


  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
