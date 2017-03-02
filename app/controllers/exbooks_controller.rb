class ExbooksController < ApplicationController
  def index
    @exbooks = Exbook.all
  end

  def show
    @exbook = Exbook.find(params[:id])
  end

  def add_to_list
    @exbook = Exbook.find(params[:id])

    if !current_list.exbooks.include?(@exbook)
      current_list.add_exbook_to_list(@exbook)
      flash[:notice] = "你已成功将 《#{@exbook.title}》 加入心愿单"
    else
      flash[:warning] = "你的心愿单内已有此书"
    end

    redirect_to :back
  end
end
