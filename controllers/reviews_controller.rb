class ReviewsController < ApplicationController
  def index
    @perfomance = Perfomance.find(params[:perfomance_id])
    @review = @perfomance.reviews.all
  end

  def show
    @review = Review.find(params[:id])
  end
end
