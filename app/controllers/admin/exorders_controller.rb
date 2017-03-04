class Admin::ExordersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @exorders = Exorder.order("id DESC")
  end
end
