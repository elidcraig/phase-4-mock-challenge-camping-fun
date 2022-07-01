class Signup < ApplicationRecord
  validates :time, numericality: { only_integer: true }, inclusion: { in: 0..23 }

  belongs_to :camper
  belongs_to :activity
end
