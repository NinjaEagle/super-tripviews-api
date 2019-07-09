# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Exam/ples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Destination.destroy_all
Tourist.destroy_all
Review.destroy_all

location_1 = Destination.create(name:"Singapore", image:"https://www.newsbtc.com/wp-content/uploads/2018/07/Singapore-Blockchain-700x400.jpg", climate:"warm", attractions:"Sentosa, Marina Bay Sands, Gardens by the Bay", description: "Singapore is a wealthy city state in south-east Asia. Once a British colonial trading post, today it is a thriving global financial hub and described as one of Asia's economic tigers. It is also renowned for its conservatism and strict local laws and the country prides itself on its stability and security.",latitude: "1.290270", longitude: "103.851959")

location_2 = Destination.create(name:"Barcelona", image:"https://www.eindhovenairport.nl/sites/default/files/styles/header_image_tablet_mobiel/public/barcelona_7.jpg?itok=wCARAUQh&c=fbab16036d43a65306e298afff4d58a0",climate:"warm", attractions:"La Sagrada Familia, Park Güell, Casa Milà", description:"Barcelona is cradled in the North Eastern Mediterranean coast of mainland Spain, about 2 hours drive South from the French Pyrenees. It's the capital of Catalunya, a region of Northern Spain that has its own unique culture, traditions and personality.", latitude: "41.3851", longitude: "-2.1734")

location_3 = Destination.create(name:"Bermuda", image:"https://www.gotobermuda.co.uk/sites/default/files/styles/hero/public/field/image/aerial_bermuda-.jpg?itok=2we26aWO", climate:"sub-tropical", attractions:"Horseshoe Bay, Crystal Cave, Royal Naval Dockyard", description:"Bermuda is a British island territory in the North Atlantic Ocean known for its pink-sand beaches such as Elbow Beach and Horseshoe Bay. Its massive Royal Naval Dockyard complex combines modern attractions like the interactive Dolphin Quest with maritime history at the National Museum of Bermuda. The island has a distinctive blend of British and American culture, which can be found in the capital, Hamilton.", latitude: "32.3078", longitude: "-64.7505")

tourist_1= Tourist.create(
      name: Faker::FunnyName.name,
      age: Faker::Number.between(18, 100)
    )
tourist_2= Tourist.create(
      name: Faker::FunnyName.name,
      age: Faker::Number.between(18, 100)
    )
tourist_3= Tourist.create(
      name: Faker::FunnyName.name,
      age: Faker::Number.between(18, 100)
    )

review1= Review.create(
    name: tourist_1.name,
    description: "It is a nice touristy spot",
    destination_name: location_1.name,
    tourist_id: tourist_1.id,
    destination_id: location_1.id
  )

review2= Review.create(
  name: tourist_2.name,
  description: "I love Spanish food and the architecture. It's my favorite city in Spain",
  destination_name: location_2.name,
  tourist_id: tourist_2.id,
  destination_id: location_2.id
)

review3= Review.create(
  name: tourist_3.name,
  description: "The beaches are really clean and people are friendly!",
  destination_name: location_3.name,
  tourist_id: tourist_3.id,
  destination_id: location_3.id
)

review4= Review.create(
  name: tourist_2.name,
  description: "It is a nice island getaway. 10/10 would come back to visit here again!",
  destination_name: location_3.name,
  tourist_id: tourist_2.id,
  destination_id: location_3.id
)
