class UdetailsController < ApplicationController
  def new
    @udetails = Udetail.new
  end

  def create
    @udetails = Udetail.new(params[:udetail])
    if @udetails.save
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
  def index
     @udetails = Udetail.all
    
  end
end
