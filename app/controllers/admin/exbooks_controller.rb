class Admin::ExbooksController < ApplicationController

  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @exbooks = Exbook.all
  end

  def new
    @exbook = Exbook.new
    @photo = @exbook.photos.build #for multi-pics
  end

  def create
    @exbook = Exbook.new(exbook_params)
    if @exbook.save
      if params[:photos] != nil
        params[:photos]['avatar'].each do |a|
          @photo = @exbook.photos.create(:avatar => a)
        end
      end
      redirect_to admin_exbooks_path
    else
      render :new
    end
  end

  def edit
    @exbook = Exbook.find(params[:id])
  end

  def update
    @exbook = exbook.find(params[:id])

    if params[:photos] != nil
      @exbook.photos.destroy_all #need to destroy old pics first

      params[:photos]['avatar'].each do |a|
        @picture = @exbook.photos.create(:avatar => a)
      end

      @exbook.update(exbook_params)
      redirect_to admin_exbooks_path

    elsif @exbook.update(exbook_params)
      redirect_to admin_exbooks_path
    else
      render :edit
    end
  end

  private

  def exbook_params
    params.require(:exbook).permit(:title, :description, :quantity, :booktype, :image)
  end
end
