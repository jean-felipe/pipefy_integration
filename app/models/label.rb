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

class Label < ActiveRecord::Base

  belongs_to :pipe
  
end
