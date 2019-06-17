class Setup < ApplicationRecord
  belongs_to :user
  has_many :pads
  accepts_nested_attributes_for :pads
end
