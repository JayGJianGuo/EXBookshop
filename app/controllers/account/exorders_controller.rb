class Account::ExordersController < ApplicationController
  before_action :authenticate_user!

  def index
    @exorders = current_user.exorders
  end
end
