require "rails_helper"

describe 'create a new phase' do
  
  before do
  	pipe = create(:pipe)
  	visit root_path
  end

  it 'open a form when clicked in new' do
  	click_on "View Pipe"

  	click_on "New Phase"

  	expect(page).to have_content("New Phase.")
  	
  end

  	
  end

  def modal_content
  	'.modal-content'
  end
end