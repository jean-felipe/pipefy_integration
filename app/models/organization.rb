# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Organization < ActiveRecord::Base

  has_many :users
  has_many :pipes 
  belongs_to :user

end
