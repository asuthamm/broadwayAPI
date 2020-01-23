class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :show_type, :opening_date, :performances, :likes, :image
  has_many :awards
  has_many :comments
end
