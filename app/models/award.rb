class Award < ApplicationRecord
  has_many :nominees
  belongs_to :show
end
