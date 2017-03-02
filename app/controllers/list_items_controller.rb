class ListItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @list = current_list
    @list_item = @list.list_items.find_by(exbook_id: params[:id])
    @exbook = @list_item.exbook
    @list_item.destroy

    flash[:notice] = "您以成功将《#{@exbook.title}》从心愿单移除！"
    redirect_to :back
  end
end
