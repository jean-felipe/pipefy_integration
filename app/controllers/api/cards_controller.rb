class Api::CardsController < ApplicationController
  def show
  end

  def index
  	@cards = Card.where(phase_id: params[:format])
  	render :json => @cards
  end

   def create
    binding.pry
  	card = Card.new(card_params)
  	if card.save
  	  render json: card 
  	else
  	  render nothing: true, status: :bad_request
  	end
  end

  private

  def card_params
  	params.require(:card).permit(:title, :user_id, :phase_id)
  end
end
