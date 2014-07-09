class UsersController < ApplicationController
  layout 'home'

  def show
    @user = User.find(params[:id])
  end
end
