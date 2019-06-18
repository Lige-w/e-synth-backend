class Pad < ApplicationRecord
  belongs_to :setup
  has_many :oscillators, dependent: :destroy
  accepts_nested_attributes_for :oscillators
end
