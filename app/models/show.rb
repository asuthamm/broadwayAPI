class Show < ApplicationRecord
    has_many :awards
    has_many :comments, dependent: :destroy
    has_many :nominees, through: :awards

    validates :title, presence: true
    validates :show_type, presence: true
    validates :opening_date, presence: true
    validates :performances, presence: true
    validates :likes, presence: true
    validates :image, presence: true
end


