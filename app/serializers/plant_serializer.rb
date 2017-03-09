class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance_between_from, :distance_between_to
  has_many :plantings
end
