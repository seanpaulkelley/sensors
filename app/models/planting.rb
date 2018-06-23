class Planting < ApplicationRecord

  belongs_to :plant
  validates :planting_type, presence: true
  validates :planting_date_begin, presence: true
  validates :days_to_harvest_from, presence: true

  def self.this_week
    start_date = Date.today.at_beginning_of_week.change(:year => 2017)
    end_date = Date.today.at_end_of_week.change(:year => 2017)
    Planting.where('planting_date_end >= ? AND planting_date_begin <= ?', start_date, end_date)
  end

  def self.next_week
    start_date = Date.today.at_beginning_of_week.change(:year => 2017) + 7.days
    end_date = Date.today.at_end_of_week.change(:year => 2017) + 7.days
    Planting.where('planting_date_end >= ? AND planting_date_begin <= ?', start_date, end_date)
  end

  def self.last_week
    start_date = Date.today.at_beginning_of_week.change(:year => 2017) - 7.days
    end_date = Date.today.at_end_of_week.change(:year => 2017) - 7.days
    Planting.where('planting_date_end >= ? AND planting_date_begin <= ?', start_date, end_date)
  end
end
