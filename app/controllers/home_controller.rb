class HomeController < ApplicationController
  layout 'home'
  before_action :authenticate_user!

  def index
    @user = current_user
    @recipes = Recipe.order(:name)
  end
end
