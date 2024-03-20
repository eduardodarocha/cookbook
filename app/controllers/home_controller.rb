class HomeController < ApplicationController
  def index
    # @recipe = Recipe.new(name: 'Pudim', recipe_type: 'Sobremesa')
    r1 = Recipe.new(name: 'Pudim', recipe_type: 'Sobremesa')
    r2 = Recipe.new(name: 'Bolo de cenoura', recipe_type: 'Sobremesa')

    recipes = [r1, r2]

    # render plain: 'Página principal'
    # render template: 'index' # view/home/index.html.erb

  end
  
  # def ola
  #   # render plain: 'Ola'
  #   render plain: 'Você está na página (/ola)'
  # end
end
