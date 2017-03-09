class Plant < ApplicationRecord
  has_many :plantings, :dependent => :destroy
  validates :name, presence: true
  validates :distance_between_from, presence: true
end
