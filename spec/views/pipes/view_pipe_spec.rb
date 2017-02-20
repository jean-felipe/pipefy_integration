require "rails_helper"

describe "Feature: View Pipe's content" do 

	before do
	 pipe = create(:pipe)
	 phase = create(:phase, pipe_id: pipe.id)
	 phase2 = create(:phase, name: "New phase", pipe_id: pipe.id)
	 card1 = create(:card, phase_id: phase.id )
	 card2 = create(:card, title: "tentar",  phase_id: phase.id )
	 card3 = create(:card, title: "olhar para fora", phase_id: phase.id )
	 card4 = create(:card, title: "mergulhar na piscina",  phase_id: phase.id )
	end

  it 'find a pipe and open it index'do 

  	visit root_path
  	click_on 'View Pipe'

  	expect(page).to have_content("Pipe for test")
  	expect(page).to have_content("First")
  	expect(page).to have_content("New phase")
  	expect(page).to have_content("Card for test")
  	expect(page).to have_content("tentar")
  	expect(page).to have_content("olhar para fora")
  	expect(page).to have_content("mergulhar na piscina")
  end
  
end