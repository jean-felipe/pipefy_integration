class OrganizationsController < ApplicationController
	layout 'home'
	require 'httparty'
 

  def index
  	@orgs = 'Hello World!'
  	@pipes = Pipe.all
  end

  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to action: 'index', notice: 'Organization deleted'}
    end
  end


  def fetch_data
  	response_organizations = HTTParty.get('https://app.pipefy.com/organizations/49232.json?user_email=pipefydevrecruitingfakeuser@mailinator.com&user_token=piBag2uUBesD6X1q78FR')

    response_pipes = HTTParty.get('https://app.pipefy.com/pipes/49232.json?user_email=pipefydevrecruitingfakeuser@mailinator.com&user_token=piBag2uUBesD6X1q78FR')

  	new_organization_from_api(response_organizations)
  	redirect_to action: 'index', notice: 'Organization imported successfully!'
  end

  


  private

  def new_organization_from_api(response)
  	 organization = Organization.new(name: response["name"].to_s, id: response["id"].to_i,
  	                                    created_at: response["created_at"],
  	                                    updated_at: response["updated_at"])
  	 if response["pipes"]
  	 	@pipes = response["pipes"]
  	 	@pipes.each do |pipe|
  	 		new_pipe = Pipe.new(id: pipe["id"].to_i, name: pipe["name"].to_s, organization_id: organization.id)
  	 		if new_pipe.save
  	 			notice = 'Organization imported successfully!'
  	 		else
  	 			notice = 'Organization not imported!'
  	 		end
  	 	end
  	 end
  end

 
end
