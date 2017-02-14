class OrganizationsController < ApplicationController
	layout 'home'
 

  def index
  	@orgs = 'Hello World!'
  	@pipes = Pipe.all
  end

  


  private

 
end
