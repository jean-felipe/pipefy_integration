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

describe Pipe, type: :model do

 it { should have_many(:labels)}
 it { should have_many(:users)}
 it { should have_many(:phases)}
 it { should belong_to(:organization)}
end
