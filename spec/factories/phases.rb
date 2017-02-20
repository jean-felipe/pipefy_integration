# == Schema Information
#
# Table name: phases
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  done        :boolean
#  pipe_id     :integer
#  index       :decimal(, )
#  draft       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :phase do
    name "First"
    description "MyText"
    done false
    pipe_id 1
    index "9.99"
    draft false
  end
end
