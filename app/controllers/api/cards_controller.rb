class Api::CardsController < ApplicationController
  def show
  end

  def index
  	@cards = Card.where(phase_id: params[:format])
  	render :json => @cards
  end
end
