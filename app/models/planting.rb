class Planting < ApplicationRecord

  belongs_to :plant
  validates :planting_type, presence: true
  validates :planting_date_begin, presence: true
  validates :days_to_harvest_from, presence: true

  def self.this_week
    start_date = Date.today.at_beginning_of_week
    end_date = Date.today.at_end_of_week
    Planting.where('planting_date_end >= ? AND planting_date_begin <= ?', start_date, end_date)
  end

  def self.last_week
    #where(:planting_date_begin =>  1.week.ago.beginning_of_week..1.week.ago.end_of_week)
  end

end
