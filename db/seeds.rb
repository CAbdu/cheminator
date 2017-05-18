Corridor.destroy_all
Planet.destroy_all
puts 'Cleaning database...'
puts 'Creating planets...'

planets_attributes = [
  { name: "Bitos 13",
    temperature: 198,
    distance: "20 AL",
    environment: "hostile",
    population: "bitians, humans, ewoks",
    language: "bitian",
    sociability: 4,
    sexual_compatibility: 2
  },
  { name: "Wagon Prime",
    temperature: 25,
    distance: "1 AL",
    environment: "friendly",
    population: "humans, illuminatis, neptunians",
    language: "human",
    sociability: 5,
    sexual_compatibility: 5
  },
  { name: "Xanadu",
    temperature: 89,
    distance: "7 AL",
    environment: "friendly",
    population: "kryptonians, venusians, neptunians",
    language: "xanadian",
    sociability: 2,
    sexual_compatibility: 2
  },
  { name: "Neptune",
    temperature: 45,
    distance: "8 AL",
    environment: "friendly",
    population: "naptunians, svarogians, humans",
    language: "neptunian",
    sociability: 2,
    sexual_compatibility: 4
  },
  { name: "Pluton",
    temperature: 234,
    distance: "17 AL",
    environment: "friendly",
    population: "plutonians, xanadians, ewoks",
    language: "plutonian",
    sociability: 3,
    sexual_compatibility: 3
  },
  { name: "Svarog",
    temperature: 77,
    distance: "11 AL",
    environment: "hostile",
    population: "svarogians, humans",
    language: "svarogian",
    sociability: 2,
    sexual_compatibility: 5
  },
  { name: "Sirius 4",
    temperature: 2,
    distance: "3 AL",
    environment: "hostile",
    population: "sirians, moonians",
    language: "sirian",
    sociability: 5,
    sexual_compatibility: 3
  },
  { name: "Regulus Prime",
    temperature: 54,
    distance: "37 AL",
    environment: "friendly",
    population: "regulians, humans",
    language: "regulian",
    sociability: 1,
    sexual_compatibility: 3
  },
  { name: "Endor",
    temperature: 21,
    distance: "3 AL",
    environment: "friendly",
    population: "endorians, ewoks",
    language: "ewok",
    sociability: 4,
    sexual_compatibility: 1
  }
]

Planet.create!(planets_attributes)
puts 'Finished!'

puts 'Creating corridors...'

corridors_attributes = [
  {
    planet: Planet.find(1),
    address: "91 rue Camille Sauvageau Bordeaux",
    city: "Bordeaux - France"
  },
  {
    planet: Planet.find(2),
    address: "107 Cours Balguerie Stuttenberg Bordeaux",
    city: "Bordeaux - France"
  },
   {
    planet: Planet.find(3),
    address: "Hanga Roa Chili",
    city: "Hanga Roa - Chili"
  },
  {
    planet: Planet.find(4),
    address: "91 rue Belleville Paris",
    city: "Paris - France"
  },
  {
    planet: Planet.find(5),
    address: "22 avenue de la République Limoges",
    city: "Limoges - France"
  },
  {
    planet: Planet.find(6),
    address: "20 Quai Richelieu Bordeaux",
    city: "Bordeaux - France"
  },
  {
    planet: Planet.find(7),
    address: "11 Park Avenue New York",
    city: "New York - USA"
  },
   {
    planet: Planet.find(8),
    address: "Hiroshima Japan",
    city: "Hiroshima - Japan"
  },
   {
    planet: Planet.find(9),
    address: "55 rue du Faubourg Saint-Honoré Paris",
    city: "Paris - France"
  },
]
Corridor.create!(corridors_attributes)
puts 'Finished!'
