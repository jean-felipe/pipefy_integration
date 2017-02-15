class PipesController < ApplicationController
	layout 'home'
  def show
  	@pipe = Pipe.find(params[:format])
  	@phase = @pipe.phases
  end

  # def pipe_cards
  # 	@cards = []
  # 	@phase.each do |p|
  	  
  # 	end
  # end
end
