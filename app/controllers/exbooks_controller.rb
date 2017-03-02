class ExbooksController < ApplicationController
  def index
    @exbooks = Exbook.all
  end

  def show
    @exbook = Exbook.find(params[:id])
  end

  def add_to_list
    @exbook = Exbook.find(params[:id])
    current_list.add_exbook_to_list(@exbook)
    flash[:notice] = "成功加入心愿单"
    redirect_to :back
  end
end
