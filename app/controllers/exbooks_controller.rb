class ExbooksController < ApplicationController
  def index
    @exbooks = Exbook.all
  end

  def show
    @exbook = Exbook.find(params[:id])
    @photos = @exbook.photos.all
  end
end
