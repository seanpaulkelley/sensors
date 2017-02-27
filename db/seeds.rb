# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reading.create(value: 55.0, sensor_type: 'soil')
Reading.create(value: 60.5, sensor_type: 'soil')
Reading.create(value: 65.0, sensor_type: 'soil')
Reading.create(value: 70.1, sensor_type: 'soil')

Reading.create(value: 60.0, sensor_type: 'air')
Reading.create(value: 70.0, sensor_type: 'air')
Reading.create(value: 80.0, sensor_type: 'air')
Reading.create(value: 90.0, sensor_type: 'air')

Reading.create(value: 80.0, sensor_type: 'grafting-humidty')
Reading.create(value: 90.0, sensor_type: 'grafting-humidty')
Reading.create(value: 95.0, sensor_type: 'grafting-humidty')
Reading.create(value: 100.0, sensor_type: 'grafting-humidty')

Reading.create(value: 80.0, sensor_type: 'grafting-temperature')
Reading.create(value: 80.0, sensor_type: 'grafting-temperature')
Reading.create(value: 85.0, sensor_type: 'grafting-temperature')
Reading.create(value: 85.0, sensor_type: 'grafting-temperature')
