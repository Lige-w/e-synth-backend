class Setup < ApplicationRecord
  belongs_to :user
  has_many :pads, dependent: :destroy
  accepts_nested_attributes_for :pads
end
