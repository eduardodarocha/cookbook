class HomeController < ApplicationController
  def ola
    # render plain: 'Ola'
    render plain: 'Você está na página (/ola)'
  end
end
