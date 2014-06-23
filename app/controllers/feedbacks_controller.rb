class FeedbacksController < ApplicationController
  def new
    @feedbacks = Feedback.new
  end

  def create
    @feedbacks = Feedback.new(params[:feedback])
    if @feedbacks.save
      redirect_to pages_home_path
    else
     render "new"
    end
  end

  def update
  end

  def delete
  end

  def edit
  end

  def show
  end
end
