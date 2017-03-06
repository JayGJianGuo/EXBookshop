class ListsController < ApplicationController
  def clean
    current_list.clean!
    flash[:warning] = "已清空购物车"
    redirect_to lists_path
  end

  def checkout
    @exorder = Exorder.new
  end
end
