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

  	new_organization_from_api(response_organizations)

    response_pipes = HTTParty.get('https://app.pipefy.com/pipes/143185.json?user_email=pipefydevrecruitingfakeuser@mailinator.com&user_token=piBag2uUBesD6X1q78FR')
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
  	 			 notice =  'Organization imported successfully!'
  	 		else
  	 			notice =  'Organization not imported!'
  	 		end
  	 	end
  	 end

     pipes_validation
  end

  def pipes_validation
    response_pipes = HTTParty.get('https://app.pipefy.com/pipes/143185.json?user_email=pipefydevrecruitingfakeuser@mailinator.com&user_token=piBag2uUBesD6X1q78FR')
    response_pipes2 = HTTParty.get('https://app.pipefy.com/pipes/143156.json?user_email=pipefydevrecruitingfakeuser@mailinator.com&user_token=piBag2uUBesD6X1q78FR')

    
      if response_pipes["error"] || response_pipes2["error"]
        error_message = response_pipes["error"]
       
      else
        create_phases(pipe["phases"])
        create_labels_and_users(pipe)
      end
    end
  end

  def create_phases(phases)
    phases["phases"].each do |phase|
          new_phase = Phase.new(id: phase["id"].to_i, name: phase["name"] , description: phase["description"], 
                                done: phase["done"], pipe_id: phase["pipe_id"].to_i , index: phase["index"].to_f ,
                                draft: phase["draft"] )
      if new_phase.valid?
        new_phase["cards"].each do |card|
          new_card = Card.new(id: card["id"].to_i, title: card["title"], current_phase_id: card["current_phase_id"].to_i,
                              due_date: card["due_date"], index: card["index"])
          new_card.save
            end
      else
        notice = "There was a problem when importing some or one Phase."
              
      end
    end
  end

  def create_labels_and_users(response)
    %w(labels users).each do |member|
      response["#{member}"].each do |new_obj|
        if new_obj == "labels"
          new_label = Label.new(id: new_obj["id"].to_i, name: new_obj["name"], color: new_obj["color"])
          new_label.valid? ? new_label.save : notice = "Was not possible to import the label."
        else
          new_user = User.new(id: new_obj["id"].to_i, name: new_obj["name"], username: new_obj["username"], 
                              email: new_obj["email"], display_username: new_obj["disaplay_username"], 
                              pipe_id: [response["id"]])
          new_user.valid? ? new_user.save : notice = "Was not possible to import the user."

        end
      end
    end
  end
