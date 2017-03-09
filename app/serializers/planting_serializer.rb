class PlantingSerializer < ActiveModel::Serializer
  attributes :id, :planting_type, :planting_date_begin, :planting_date_end, :days_to_harvest_from, :days_to_harvest_to, :plant_id
  has_one :plant
end
