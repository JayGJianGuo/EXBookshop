class ExbooksController < ApplicationController
  def index
    @exbooks = Exbook.all
  end

  def show
    @exbook = Exbook.find(params[:id])
    @photos = @exbook.photos.all
  end

  def add_to_list
    @exbook = Exbook.find(params[:id])
    redirect_to :back
    flash[:notice] = "test"
  end
end
