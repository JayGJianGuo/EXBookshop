class ExbooksController < ApplicationController
  def index
    @exbooks = Exbook.all
  end

  def show
    @exbook = Exbook.find(params[:id])
  end
end
