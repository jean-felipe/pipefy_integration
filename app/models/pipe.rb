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

class Pipe < ActiveRecord::Base
  
  belongs_to :organization

  has_many :labels
  has_many :users 
  has_many :phases
  has_many :cards, through: :phases

end
