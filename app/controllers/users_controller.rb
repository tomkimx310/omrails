class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@pins = @user.pins.page(params[:id]).per_page(20)
  end
end
