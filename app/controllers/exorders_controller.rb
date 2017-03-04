class ExordersController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @exorder = Exorder.new(exorder_params)
    @exorder.user = current_user

    if @exorder.save

      current_list.list_items.each do |list_item|
        exbook_list = ExbookList.new
        exbook_list.exorder = @exorder
        exbook_list.exbook_name = list_item.exbook.title
        exbook_list.exbook_booktype = list_item.exbook.booktype
        exbook_list.quantity = list_item.quantity
        exbook_list.save
      end

      redirect_to exorder_path(@exorder.token)
    else
      render 'lists/checkout'
    end
  end

  def show
    @exorder = Exorder.find_by_token(params[:id])
    @exbook_lists = @exorder.exbook_lists
  end

  private

  def exorder_params
    params.require(:exorder).permit(:shipping_name, :shipping_wechat, :shipping_phone, :shipping_location)
  end
end
