# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  name       :string
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pipe_id    :integer
#

FactoryGirl.define do
  factory :label do
    name "MyString"
    color "MyString"
  end
end
