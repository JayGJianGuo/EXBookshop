class Admin::ExordersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @exorders = Exorder.order("id DESC")
  end

  def show
   @exorder = Exorder.find(params[:id])
   @exbook_lists = @exorder.exbook_lists
 end

 def chose
    @exorder = Exorder.find(params[:id])
    @exorder.chose!
    redirect_to :back
  end

  def checked
    @exorder = Exorder.find(params[:id])
    @exorder.checked!
    redirect_to :back
  end

  def cancel
    @exorder = Exorder.find(params[:id])
    @exorder.cancel_exorder!
    redirect_to :back
  end

end
