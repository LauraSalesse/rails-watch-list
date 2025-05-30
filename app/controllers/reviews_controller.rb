class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = @list.reviews.build(review_params)
    if @review.save
      redirect_to list_path(@list), notice: "posted!"
    else
      redirect_to list_path(@list), alert: "review can't be blank!"
    end
  end


  private
  def review_params
    params.require(:review).permit(:content)
  end
end
