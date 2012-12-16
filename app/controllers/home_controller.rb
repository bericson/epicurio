class HomeController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  #def index
  #  @users = User.all
  #end

end
