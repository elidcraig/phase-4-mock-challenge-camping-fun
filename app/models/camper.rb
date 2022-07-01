class Camper < ApplicationRecord
  validates :name, :age, presence: true
  validates :age, inclusion: { in: 8..18 }

  has_many :signups
  has_many :activities, through: :signups
end
