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

require 'rails_helper'

describe Card, type: :model do
  it { should belong_to(:phase)}
end
