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

  def update
    @list = current_list
    @list_item = @list.list_items.find_by(exbook_id: params[:id])

    if @list_item.exbook.quantity >= list_item_params[:quantity].to_i
      @list_item.update(list_item_params)
      flash[:notice] = "成功变更数量"
    else
      flash[:warning] = "数量不足以加入购物车"
    end

    redirect_to lists_path
  end

  def add_quantity
		@list_item = current_list.list_items.find_by_exbook_id(params[:id])
		if @list_item.quantity < @list_item.exbook.quantity
			@list_item.quantity += 1
			@list_item.save
			redirect_to lists_path
		elsif @list_item.quantity == @list_item.exbook.quantity
			redirect_to lists_path, alert: "库存不足！"
		end
	end

	def remove_quantity
		@list_item = current_list.list_items.find_by_exbook_id(params[:id])
		if @list_item.quantity > 0
			@list_item.quantity -= 1

      if @list_item.quantity == 0
        @list_item.quantity += 1
  			@list_item.save
  			redirect_to lists_path, alert: "商品不能为0！"
      else
        @list_item.save
        redirect_to lists_path
      end
		end
	end

  private

  def list_item_params
     params.require(:list_item).permit(:quantity)
  end
end
