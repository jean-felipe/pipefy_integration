# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'rails_helper'

describe Organization, type: :model do
  it { should belong_to(:user)}
  it { should have_many(:pipes)}
  it { should have_many(:users)}
end
