class Admin::ExbooksController < ApplicationController

  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @exbooks = Exbook.all
  end

  def new
    @exbook = Exbook.new
  end

  def create
    @exbook = Exbook.new(exbook_params)
    if @exbook.save
      redirect_to admin_exbooks_path
    else
      render :new
    end
  end

  def edit
    @exbook = Exbook.find(params[:id])
  end

  def update
    @exbook = Exbook.find(params[:id])
    if @exbook.update(exbook_params)
      redirect_to admin_exbooks_path
    else
      render :edit
    end
  end

  private

  def exbook_params
    params.require(:exbook).permit(:title, :description, :quantity, :booktype)
  end
end
