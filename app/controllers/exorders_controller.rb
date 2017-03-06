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

      current_list.clean!
      ExorderMailer.notify_exorder_placed(@exorder).deliver!

      redirect_to exorder_path(@exorder.token)
    else
      render 'lists/checkout'
    end
  end

  def show
    @exorder = Exorder.find_by_token(params[:id])
    @exbook_lists = @exorder.exbook_lists
  end

  def exchange_with_meet
    @exorder = Exorder.find_by_token(params[:id])
    @exorder.set_exchange_with!("meet")
    @exorder.exchange!
    @exorder.exchange_happen!

    redirect_to exorder_path(@exorder.token), notice: "您已选择进行线下交换"
  end

  def exchange_with_online
    @exorder = Exorder.find_by_token(params[:id])
    @exorder.set_exchange_with!("online")
    @exorder.exchange!
    @exorder.exchange_happen!

    redirect_to exorder_path(@exorder.token), notice: "您已选择进行线上交换！"
  end

  def apply_to_cancel
    @exorder = Exorder.find(params[:id])
    ExorderMailer.apply_cancel(@exorder).deliver!
    flash[:notice] = "已提交申请"
    redirect_to :back
  end


  private

  def exorder_params
    params.require(:exorder).permit(:shipping_name, :shipping_wechat, :shipping_phone, :shipping_location)
  end
end
