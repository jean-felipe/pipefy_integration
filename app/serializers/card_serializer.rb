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

class CardSerializer < ActiveModel::Serializer
  attributes :id, :title

  belongs_to :phase
end
