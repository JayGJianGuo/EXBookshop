class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.find_by(params[:id])
    @posts = current_user.posts
  end
end
