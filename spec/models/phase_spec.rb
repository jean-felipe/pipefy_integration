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

require 'rails_helper'

describe Phase,type: :model do
 it { should belong_to(:pipe)}
 it { should have_many(:cards)}
end
