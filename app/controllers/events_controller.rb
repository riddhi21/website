class EventsController < ApplicationController
   def new
    @events = Event.new
  end

  def create
    @events = Event.new(params[:event])
    if @events.save
      redirect_to pages_home_path
    else
     render "new"
    end
  end

  def update
  end

  def edit
  end

  def show
  end

  def delete
  end
end
