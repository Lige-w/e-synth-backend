class Pad < ApplicationRecord
  belongs_to :setup
  has_many :oscillators
end
