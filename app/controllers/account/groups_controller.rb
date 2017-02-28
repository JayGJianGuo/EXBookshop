class Account::GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.participated_groups
  end

  def edit
    @group = Group.find(params[:id])
  end

  def destroy
    @group.destroy
    flash[:alert] = "讨论组已删除"
    redirect_to account_groups_path
  end
end
