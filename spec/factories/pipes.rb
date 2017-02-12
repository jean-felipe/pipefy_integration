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

FactoryGirl.define do
  factory :pipe do
    name "MyString"
    token "MyText"
    can_edit false
  end
end
