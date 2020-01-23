class Nominee < ApplicationRecord
  belongs_to :award
  delegate :show, to: :award
end
