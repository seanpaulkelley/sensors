class Planting < ApplicationRecord
  belongs_to :plant
  validates :planting_type, presence: true
  validates :planting_date_begin, presence: true
  validates :days_to_harvest_from, presence: true
end
