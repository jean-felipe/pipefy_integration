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
#

FactoryGirl.define do
  factory :card do
    title "MyString"
    current_phase_id 1
    due_date "2017-02-12"
    index "9.99"
  end
end
