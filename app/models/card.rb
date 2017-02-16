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
#  user_id          :integer
#

class Card < ActiveRecord::Base

  belongs_to :phase

 # validates_presence_of :current_phase_id

 def current_phase_id
   current_phase_id = Phase.find(current_phase_id)
 end
end
