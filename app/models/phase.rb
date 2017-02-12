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

class Phase < ActiveRecord::Base

  belongs_to :pipe

  has_many :cards
end
