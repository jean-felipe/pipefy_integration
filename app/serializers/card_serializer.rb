class CardSerializer < ActiveModel::Serializer
  attributes :id, :title

  belongs_to :phase
end
