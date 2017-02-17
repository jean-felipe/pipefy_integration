class CardsController < ApplicationController
  def show
  end

  def index
  	@cards = Cards.all
  	respond_to do |format|
  		format.html
  		format.json { render json: @cards }
  	end
  end
end
