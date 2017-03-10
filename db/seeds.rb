# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

Plant.destroy_all
Planting.destroy_all

plants = [
  {name: 'Artichokes, globe', distance_between_from: 30},
  {name: 'Artichokes, Jerusalem', distance_between_from: 9, distance_between_to: 12},
  {name: 'Arugula', distance_between_from: 6 ,distance_between_to: 9},
  {name: 'Asparagus', distance_between_from: 18},
  {name: 'Basil', distance_between_from: 2, distance_between_to: 8},
  {name: 'Beans, lima/bush', distance_between_from: 6},
  {name: 'Beans, lima/pole', distance_between_from: 6},
  {name: 'Beans, snap/bush', distance_between_from: 2},
  {name: 'Beans, snap/pole', distance_between_from: 6},
  {name: 'Beets', distance_between_from: 2},
  {name: 'Broccoli', distance_between_from: 18},
  {name: 'Brussel Sprouts', distance_between_from: 14, distance_between_to: 18},
  {name: 'Cabbage', distance_between_from: 12},
  {name: 'Cabbage, Chinese', distance_between_from: 12},
  {name: 'Carrots', distance_between_from: 2},
  {name: 'Cauliflower', distance_between_from: 18},
  {name: 'Celery', distance_between_from: 6, distance_between_to: 8},
  {name: 'Chard, Swiss', distance_between_from: 6},
  {name: 'Cilantro', distance_between_from: 2, distance_between_to: 4},
  {name: 'Collard Greens', distance_between_from: 18},
  {name: 'Corn, sweet', distance_between_from: 12},
  {name: 'Cucumbers', distance_between_from: 12},
  {name: 'Dill', distance_between_from:  2, distance_between_to: 4},
  {name: 'Eggplant', distance_between_from: 24},
  {name: 'Fennel, Florence', distance_between_from: 6, distance_between_to: 12},
  {name: 'Garlic', distance_between_from: 4, distance_between_to: 6},
  {name: 'Kale', distance_between_from: 6},
  {name: 'Kohlrabi', distance_between_from: 4},
  {name: 'Leek', distance_between_from:  4},
  {name: 'Lettuce, head', distance_between_from: 10},
  {name: 'Lettuce, leaf', distance_between_from: 6},
  {name: 'Melons, cantaloupe', distance_between_from: 24},
  {name: 'Melons, watermelon', distance_between_from: 60},
  {name: 'Mustard', distance_between_from: 2},
  {name: 'Okra', distance_between_from: 12},
  {name: 'Onions, bulb', distance_between_from: 4},
  {name: 'Onions, green', distance_between_from: 1, distance_between_to: 2},
  {name: 'Pac choi/bok choy', distance_between_from: 7, distance_between_to: 12},
  {name: 'Parsley', distance_between_from: 9, distance_between_to: 12},
  {name: 'Parsnips', distance_between_from: 3, distance_between_to: 4},
  {name: 'Peanuts', distance_between_from: 6, distance_between_to: 8},
  {name: 'Peas, bush', distance_between_from: 4},
  {name: 'Peas, vining', distance_between_from: 2, distance_between_to: 3},
  {name: 'Peas, field/southern', distance_between_from: 4},
  {name: 'Peppers', distance_between_from: 18},
  {name: 'Potatoes, Irish', distance_between_from: 10},
  {name: 'Potatoes, sweet', distance_between_from: 10},
  {name: 'Pumpkin', distance_between_from: 48},
  {name: 'Radishes', distance_between_from: 1},
  {name: 'Rutabega', distance_between_from: 4},
  {name: 'Spinach', distance_between_from: 6},
  {name: 'Squash, summer', distance_between_from: 24},
  {name: 'Squash, winter', distance_between_from: 36},
  {name: 'Sunflower', distance_between_from: 9, distance_between_to: 24},
  {name: 'Tomatoes', distance_between_from: 18},
  {name: 'Turnips', distance_between_from: 2} 

]

plants.each {|plant|
  p = Plant.create(plant)
  p.save
  if p.name=='Artichokes, globe'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 365, plant_id: p.id)
    pp.save!
  end 

  if p.name=='Artichokes, Jerusalem'
    pp = Planting.create(planting_type: 'tuber', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 180, days_to_harvest_to: 240, plant_id: p.id)
    pp.save!
  end

  if p.name=='Arugula'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!
  end  

  if p.name=='Asparagus'
    pp = Planting.create(planting_type: 'crown', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 40, days_to_harvest_to: 720, plant_id: p.id)
    pp.save!
  end 

  if p.name=='Basil'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,5,1), planting_date_end: Date.new(2017,7,30), days_to_harvest_from: 50, days_to_harvest_to: 75, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,5,1), planting_date_end: Date.new(2017,7,30), days_to_harvest_from: 14, days_to_harvest_to: 35, plant_id: p.id)
    pp.save!
  end

  if p.name=='Beans, lima/bush'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,7,30), days_to_harvest_from: 65, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!
  end

  if p.name=='Beans, lima/pole'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,15), days_to_harvest_from: 75, days_to_harvest_to: 95, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 75, days_to_harvest_to: 95, plant_id: p.id)
    pp.save!
  end

  if p.name=='Beans, snap/bush'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 65, days_to_harvest_to: 70, plant_id: p.id)
    pp.save!
  end 

  if p.name=='Beets'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 55, days_to_harvest_to: 60, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,15), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 55, days_to_harvest_to: 60, plant_id: p.id)
    pp.save!
  end 


  if p.name=='Broccoli'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 70, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 70, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!
  end

  if p.name=='Broccoli'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 70, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 70, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!
  end
    
  if p.name=='Brussel Sprouts'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,7,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 90, days_to_harvest_to: 100, plant_id: p.id)
    pp.save!   
  end 

  if p.name=='Cabbage'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 63, days_to_harvest_to: 75, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 90, days_to_harvest_to: 120, plant_id: p.id)
    pp.save!   
  end 

  if p.name=='Cabbage, Chinese'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 45, days_to_harvest_to: 55, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,9,15), planting_date_end: Date.new(2017,10,15), days_to_harvest_from: 45, days_to_harvest_to: 55, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 90, days_to_harvest_to: 120, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 90, days_to_harvest_to: 120, plant_id: p.id)
    pp.save!        
  end  

  if p.name=='Carrots'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 75, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,15), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 75, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!  
  end  

  if p.name=='Cauliflower'
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 55, days_to_harvest_to: 65, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 55, days_to_harvest_to: 65, plant_id: p.id)
    pp.save

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 85, days_to_harvest_to: 95, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 85, days_to_harvest_to: 95, plant_id: p.id)
    pp.save!  
  end      

  if p.name=='Celery'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 120, days_to_harvest_to: 150, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,6,15), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 120, days_to_harvest_to: 150, plant_id: p.id)
    pp.save! 

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,6,15), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!  
  end

  if p.name=='Chard, Swiss'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,1), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 60, days_to_harvest_to: 70, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 60, days_to_harvest_to: 70, plant_id: p.id)
    pp.save! 

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,3,1), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 32, days_to_harvest_to: 42, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 32, days_to_harvest_to: 42, plant_id: p.id)
    pp.save!  
  end  

  if p.name=='Cilantro'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 50, days_to_harvest_to: 55, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,9,15), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 50, days_to_harvest_to: 55, plant_id: p.id)
    pp.save! 
  
  end  


  if p.name=='Collard Greens'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,15), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 60, days_to_harvest_to: 100, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 32, days_to_harvest_to: 72, plant_id: p.id)
    pp.save! 
  
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,7,15), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 32, days_to_harvest_to: 72, plant_id: p.id)
    pp.save!
  end  

  if p.name=='Corn, sweet'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,5,30), days_to_harvest_from: 85, days_to_harvest_to: 90, plant_id: p.id)
    pp.save
  end

  if p.name=='Cucumbers'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 56, days_to_harvest_to: 65, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 28, days_to_harvest_to: 37, plant_id: p.id)
    pp.save!   
  end

  if p.name=='Dill'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 40, days_to_harvest_to: 55, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 40, days_to_harvest_to: 55, plant_id: p.id)
    pp.save!   
  end  

  if p.name=='Eggplant'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,15), days_to_harvest_from: 150, days_to_harvest_to: 155, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 150, days_to_harvest_to: 155, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,15), days_to_harvest_from: 90, days_to_harvest_to: 95, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 90, days_to_harvest_to: 95, plant_id: p.id)
    pp.save!          
  end  

  if p.name=='Fennel, Florence'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 60, days_to_harvest_to: 90, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,1), planting_date_end: Date.new(2017,8,30), days_to_harvest_from: 60, days_to_harvest_to: 90, plant_id: p.id)
    pp.save!
  end
  
  if p.name=='Garlic'
    pp = Planting.create(planting_type: 'bulb', planting_date_begin: Date.new(2017,9,15), planting_date_end: Date.new(2017,11,30), days_to_harvest_from: 180, days_to_harvest_to: 210, plant_id: p.id)
    pp.save!
  end

  if p.name=='Kale'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 14, days_to_harvest_to: 22, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 14, days_to_harvest_to: 22, plant_id: p.id)
    pp.save!       
  end   

  if p.name=='Kohlrabi'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 50, days_to_harvest_to: 60, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 50, days_to_harvest_to: 60, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 22, days_to_harvest_to: 32, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 22, days_to_harvest_to: 32, plant_id: p.id)
    pp.save!       
  end

  if p.name=='Leek'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 120, days_to_harvest_to: 150, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 50, days_to_harvest_to: 80, plant_id: p.id)
    pp.save!       
  end         

  if p.name=='Lettuce, head'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,3,15), days_to_harvest_from: 70, days_to_harvest_to: 85, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,15), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 70, days_to_harvest_to: 85, plant_id: p.id)
    pp.save!   
    
    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 45, days_to_harvest_to: 60, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,9,15), planting_date_end: Date.new(2017,10,15), days_to_harvest_from: 45, days_to_harvest_to: 60, plant_id: p.id)
    pp.save!         
  end    

  if p.name=='Lettuce, leaf'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 40, days_to_harvest_to: 50, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,4,30), days_to_harvest_from: 15, days_to_harvest_to: 25, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 15, days_to_harvest_to: 25, plant_id: p.id)
    pp.save!     
  end  

  if p.name=='Melons, cantaloupe'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,7,15), days_to_harvest_from: 85, days_to_harvest_to: 90, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,7,15), days_to_harvest_from: 57, days_to_harvest_to: 62, plant_id: p.id)
    pp.save!     
  end 

  if p.name=='Melons, watermelon'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 90, days_to_harvest_to: 100, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 62, days_to_harvest_to: 72, plant_id: p.id)
    pp.save!     
  end

  if p.name=='Mustard'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 30, days_to_harvest_to: 40, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 30, days_to_harvest_to: 40, plant_id: p.id)
    pp.save!  
  end    

  if p.name=='Okra'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 60, days_to_harvest_to: 70, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 60, days_to_harvest_to: 70, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 18, days_to_harvest_to: 28, plant_id: p.id)
    pp.save!      
  end   

  if p.name=='Onions, bulb'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,1,1), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 90, days_to_harvest_to: 120, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,12,31), days_to_harvest_from: 90, days_to_harvest_to: 120, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'bulb', planting_date_begin: Date.new(2017,3,1), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 75, days_to_harvest_to: 105, plant_id: p.id)
    pp.save!      
  end   


  if p.name=='Onions, green'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,3,30), days_to_harvest_from: 60, days_to_harvest_to: 70, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,9,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 90, days_to_harvest_to: 120, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,3,1), planting_date_end: Date.new(2017,3,31), days_to_harvest_from: 42, days_to_harvest_to: 56, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,15), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 42, days_to_harvest_to: 56, plant_id: p.id)
    pp.save!           
  end 

  if p.name=='Pac choi/bok choy'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,4,1), days_to_harvest_from: 45, days_to_harvest_to: 90, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,15), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 45, days_to_harvest_to: 90, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,4,1), days_to_harvest_from: 30, days_to_harvest_to: 75, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,15), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 30, days_to_harvest_to: 75, plant_id: p.id)
    pp.save!           
  end     

  if p.name=='Parsley'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 75, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 75, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 33, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 33, plant_id: p.id)
    pp.save!
  end    

  if p.name=='Parsnips'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,5,15), days_to_harvest_from: 100, days_to_harvest_from: 130, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 100, days_to_harvest_from: 130, plant_id: p.id)
    pp.save!
  end 

  if p.name=='Peanuts'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,5,1), planting_date_end: Date.new(2017,5,31), days_to_harvest_from: 145, days_to_harvest_from: 160, plant_id: p.id)
    pp.save!
  end    

  if p.name=='Peas, bush'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,1,1), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 54, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 54, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!   
  end


  if p.name=='Peas, vining'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,1,1), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 54, days_to_harvest_from: 72, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 54, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!   
  end   

  if p.name=='Peas, field/southern'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 55, days_to_harvest_from: 65, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,31), days_to_harvest_from: 55, days_to_harvest_from: 65, plant_id: p.id)
    pp.save!   
  end

  if p.name=='Peppers'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,15), days_to_harvest_from: 145, days_to_harvest_from: 150, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 145, days_to_harvest_from: 150, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,6,15), days_to_harvest_from: 75, days_to_harvest_from: 80, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 75, days_to_harvest_from: 80, plant_id: p.id)
    pp.save!         
  end  

  if p.name=='Potatoes, Irish'
    pp = Planting.create(planting_type: 'tubor', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,3,31), days_to_harvest_from: 95, days_to_harvest_from: 120, plant_id: p.id)
    pp.save!        
  end

  if p.name=='Potatoes, sweet'
    pp = Planting.create(planting_type: 'tubor', planting_date_begin: Date.new(2017,5,1), planting_date_end: Date.new(2017,7,15), days_to_harvest_from: 95, days_to_harvest_from: 125, plant_id: p.id)
    pp.save!        
  end 

  if p.name=='Pumpkin'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,7,15), days_to_harvest_from: 115, days_to_harvest_from: 120, plant_id: p.id)
    pp.save!        
  end  

  if p.name=='Radishes'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 20, days_to_harvest_from: 25, plant_id: p.id)
    pp.save! 

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 20, days_to_harvest_from: 25, plant_id: p.id)
    pp.save!        
  end   

  if p.name=='Rutabega'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,4,15), days_to_harvest_from: 70, days_to_harvest_from: 80, plant_id: p.id)
    pp.save! 

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,7,1), planting_date_end: Date.new(2017,9,30), days_to_harvest_from: 70, days_to_harvest_from: 80, plant_id: p.id)
    pp.save!        
  end

  if p.name=='Spinach'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,15), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 50, days_to_harvest_from: 60, plant_id: p.id)
    pp.save! 

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,10,15), days_to_harvest_from: 50, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!        
  end

  if p.name=='Squash, summer'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,1), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 50, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!   

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,1), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 30, days_to_harvest_from: 40, plant_id: p.id)
    pp.save!          
  end               

  if p.name=='Squash, winter'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 70, days_to_harvest_from: 95, plant_id: p.id)
    pp.save!  

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 42, days_to_harvest_from: 67, plant_id: p.id)
    pp.save!        
  end 

  if p.name=='Sunflower'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,3,15), planting_date_end: Date.new(2017,5,15), days_to_harvest_from: 55, days_to_harvest_from: 110, plant_id: p.id)
    pp.save!           
  end 

  if p.name=='Tomatoes'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,7,15), days_to_harvest_from: 125, days_to_harvest_from: 135, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 125, days_to_harvest_from: 135, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,4,15), planting_date_end: Date.new(2017,7,15), days_to_harvest_from: 75, days_to_harvest_from: 85, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'transplant', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,8,15), days_to_harvest_from: 75, days_to_harvest_from: 85, plant_id: p.id)
    pp.save!               
  end  

  if p.name=='Turnips'
    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,2,1), planting_date_end: Date.new(2017,6,30), days_to_harvest_from: 55, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!

    pp = Planting.create(planting_type: 'seed', planting_date_begin: Date.new(2017,8,1), planting_date_end: Date.new(2017,9,15), days_to_harvest_from: 55, days_to_harvest_from: 60, plant_id: p.id)
    pp.save!               
  end          
}
