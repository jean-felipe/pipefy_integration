# == Schema Information
#
# Table name: cards
#
#  id               :integer          not null, primary key
#  title            :string
#  current_phase_id :integer
#  due_date         :date
#  index            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  phase_id         :integer
#  user_id          :integer
#

require 'rails_helper'

RSpec.describe CardsController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
