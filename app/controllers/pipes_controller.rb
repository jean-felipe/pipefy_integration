class PipesController < ApplicationController
	layout 'home'
  def show
  	@pipe = Pipe.find(params[:format])
  	@phase = @pipe.phases
  end

  def destroy
    @pipe.destroy
    respond_to do |format|
      format.html { redirect_to action: 'index', notice: 'Organization deleted'}
    end
  end

  # def pipe_cards
  # 	@cards = []
  # 	@phase.each do |p|
  	  
  # 	end
  # end
end
