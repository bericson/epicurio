class HomeController < ApplicationController

  def index
    @recipes = Recipe.all
    @recipes_random_limited = Recipe.all(:limit => 14)
    #@recipes_limited = Recipe.all.sample(14)
  end

end
