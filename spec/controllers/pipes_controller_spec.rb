# == Schema Information
#
# Table name: pipes
#
#  id              :integer          not null, primary key
#  name            :string
#  token           :text
#  can_edit        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#

require 'rails_helper'

RSpec.describe PipesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
