class Api::PhasesController < ApplicationController
  def show
  end

  def create
  	phase = Phase.new(phase_params)
  	if phase.save
  	  render json: phase 
  	else
  	  render nothing: true, status: :bad_request
  	end
  end

  private

  def phase_params
  	params.require(:phase).permit(:name, :pipe_id)
  end
end
