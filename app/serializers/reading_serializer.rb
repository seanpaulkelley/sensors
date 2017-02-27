class ReadingSerializer < ActiveModel::Serializer
  attributes :id, :value, :sensor_type, :created_at
end
