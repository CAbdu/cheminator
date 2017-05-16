Corridor.destroy_all
Planet.destroy_all
puts 'Cleaning database...'
puts 'Creating planets...'
planets_attributes = [
  { name: "Bitos13",
    temperature: 198,
    distance: "20 AL",
    environment: "hostile",
    population: "accueillante",
    language: "bitien",
    sociability: 4,
    sexual_compatibility: 2
  },
  { name: "Neptune",
    temperature: 45,
    distance: "8 AL",
    environment: "accueillant",
    population: "hostile",
    language: "neptunian",
    sociability: 2,
    sexual_compatibility: 4
  },
  { name: "Pluton",
    temperature: 234,
    distance: "17 AL",
    environment: "accueillant",
    population: "rather cool",
    language: "plutonian",
    sociability: 3,
    sexual_compatibility: 3
  }
]
Planet.create!(planets_attributes)
puts 'Finished!'
Corridor.destroy_all
puts 'Creating corridors...'
corridors_attributes = [
  {
    planet: Planet.find(1),
    address: "91 rue Camille Sauvageau Bordeaux"
  },
  {
    planet: Planet.find(2),
    address: "90 Cours Alsace Lorraine Bordeaux"
  },
   {
    planet: Planet.find(3),
    address: "13 Place Pey Berland Bordeaux"
  },
]
Corridor.create!(corridors_attributes)
puts 'Finished!'
