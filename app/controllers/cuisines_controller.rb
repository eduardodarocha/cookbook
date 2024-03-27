class CuisinesController < ApplicationController
  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(name: params[:cuisine][:name])

    if @cuisine.save
      flash[:notice] = "Tipo de Culinária criado com sucesso"
      return redirect_to(new_cuisine_path)
    end

    render :new
  end

end