class Api::PhasesController < ApplicationController
  def show
  end

  def create
  	phase = Phase.new(phase_params)
    respond_to do |format|
    if phase.save
      format.json {phase}
      format.html { redirect_to pipes_path(phase.pipe_id), notice: 'Cliente/Fornecedor cadastrado com sucesso.' }
    else
      render nothing: true, status: :bad_request
    end
      
    end
  	
  end

  private

  def phase_params
  	params.require(:phase).permit(:name, :pipe_id)
  end
end
