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

require 'rails_helper'

describe Label, type: :model do
  it { should belong_to(:pipe)}
end
