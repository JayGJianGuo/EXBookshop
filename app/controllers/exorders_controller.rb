class ExordersController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @exorder = Exorder.new(exorder_params)
    @exorder.user = current_user

    if @exorder.save
      redirect_to exorder_path(@exorder)
    else
      render 'lists/checkout'
    end
  end

  private

  def exorder_params
    params.require(:exorder).permit(:shipping_name, :shipping_wechat, :shipping_phone, :shipping_location)
  end
end
