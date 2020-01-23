class AwardSerializer < ActiveModel::Serializer
  attributes :id, :award_ceremony,  :category
  has_many :nominees
end
