class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  

  # GET /reviews/new
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:rating, :content)
    end
end
