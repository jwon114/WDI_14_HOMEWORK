# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# POKEMON 

# Pokemon.delete_all

# Pokemon.create(species: 'Pikachu', nickname: 'Pika', level: 80)
# Pokemon.create(species: 'Charmander', nickname: 'Flame', level: 50)
# Pokemon.create(species: 'Bulbasaur', nickname: 'Bulba', level: 40)
# Pokemon.create(species: 'Squirtle', nickname: 'Steve', level: 55)

# POKEDEX

# ActiveRecord::Base.connection.reset_pk_sequence!('Pokedex')

# Pokedex.create(species:"bulbasaur", height: 7, weight: 69, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png")
# Pokedex.create(species:"ivysaur", height: 10, weight: 130, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png")
# Pokedex.create(species:"venusaur", height: 20, weight: 1000, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png")
# Pokedex.create(species:"charmander", height: 6, weight: 85, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png")
# Pokedex.create(species:"charmeleon", height: 11, weight: 190, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png")
# Pokedex.create(species:"charizard", height: 17, weight: 905, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png")
# Pokedex.create(species:"squirtle", height: 5, weight: 90, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png")
# Pokedex.create(species:"wartortle", height: 10, weight: 225, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png")
# Pokedex.create(species:"blastoise", height: 16, weight: 855, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png")
# Pokedex.create(species:"caterpie", height: 3, weight: 29, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png")
# Pokedex.create(species:"metapod", height: 7, weight: 99, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png")
# Pokedex.create(species:"butterfree", height: 11, weight: 320, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png")
# Pokedex.create(species:"weedle", height: 3, weight: 32, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png")
# Pokedex.create(species:"kakuna", height: 6, weight: 100, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png")
# Pokedex.create(species:"beedrill", height: 10, weight: 295, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png")
# Pokedex.create(species:"pidgey", height: 3, weight: 18, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png")
# Pokedex.create(species:"pidgeotto", height: 11, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png")
# Pokedex.create(species:"pidgeot", height: 15, weight: 395, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png")
# Pokedex.create(species:"rattata", height: 3, weight: 35, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png")
# Pokedex.create(species:"raticate", height: 7, weight: 185, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png")
# Pokedex.create(species:"spearow", height: 3, weight: 20, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png")
# Pokedex.create(species:"fearow", height: 12, weight: 380, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png")
# Pokedex.create(species:"ekans", height: 20, weight: 69, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png")
# Pokedex.create(species:"arbok", height: 35, weight: 650, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png")
# Pokedex.create(species:"pikachu", height: 4, weight: 60, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png")
# Pokedex.create(species:"raichu", height: 8, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png")
# Pokedex.create(species:"sandshrew", height: 6, weight: 120, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png")
# Pokedex.create(species:"sandslash", height: 10, weight: 295, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png")
# Pokedex.create(species:"nidoran-f", height: 4, weight: 70, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png")
# Pokedex.create(species:"nidorina", height: 8, weight: 200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png")
# Pokedex.create(species:"nidoqueen", height: 13, weight: 600, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png")
# Pokedex.create(species:"nidoran-m", height: 5, weight: 90, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png")
# Pokedex.create(species:"nidorino", height: 9, weight: 195, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png")
# Pokedex.create(species:"nidoking", height: 14, weight: 620, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png")
# Pokedex.create(species:"clefairy", height: 6, weight: 75, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png")
# Pokedex.create(species:"clefable", height: 13, weight: 400, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png")
# Pokedex.create(species:"vulpix", height: 6, weight: 99, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png")
# Pokedex.create(species:"ninetales", height: 11, weight: 199, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png")
# Pokedex.create(species:"jigglypuff", height: 5, weight: 55, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png")
# Pokedex.create(species:"wigglytuff", height: 10, weight: 120, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png")
# Pokedex.create(species:"zubat", height: 8, weight: 75, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png")
# Pokedex.create(species:"golbat", height: 16, weight: 550, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png")
# Pokedex.create(species:"oddish", height: 5, weight: 54, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png")
# Pokedex.create(species:"gloom", height: 8, weight: 86, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png")
# Pokedex.create(species:"vileplume", height: 12, weight: 186, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png")
# Pokedex.create(species:"paras", height: 3, weight: 54, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png")
# Pokedex.create(species:"parasect", height: 10, weight: 295, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png")
# Pokedex.create(species:"venonat", height: 10, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png")
# Pokedex.create(species:"venomoth", height: 15, weight: 125, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png")
# Pokedex.create(species:"diglett", height: 2, weight: 8, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png")
# Pokedex.create(species:"dugtrio", height: 7, weight: 333, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png")
# Pokedex.create(species:"meowth", height: 4, weight: 42, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png")
# Pokedex.create(species:"persian", height: 10, weight: 320, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png")
# Pokedex.create(species:"psyduck", height: 8, weight: 196, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png")
# Pokedex.create(species:"golduck", height: 17, weight: 766, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png")
# Pokedex.create(species:"mankey", height: 5, weight: 280, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png")
# Pokedex.create(species:"primeape", height: 10, weight: 320, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png")
# Pokedex.create(species:"growlithe", height: 7, weight: 190, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png")
# Pokedex.create(species:"arcanine", height: 19, weight: 1550, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png")
# Pokedex.create(species:"poliwag", height: 6, weight: 124, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png")
# Pokedex.create(species:"poliwhirl", height: 10, weight: 200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png")
# Pokedex.create(species:"poliwrath", height: 13, weight: 540, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png")
# Pokedex.create(species:"abra", height: 9, weight: 195, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png")
# Pokedex.create(species:"kadabra", height: 13, weight: 565, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png")
# Pokedex.create(species:"alakazam", height: 15, weight: 480, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png")
# Pokedex.create(species:"machop", height: 8, weight: 195, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png")
# Pokedex.create(species:"machoke", height: 15, weight: 705, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png")
# Pokedex.create(species:"machamp", height: 16, weight: 1300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png")
# Pokedex.create(species:"bellsprout", height: 7, weight: 40, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png")
# Pokedex.create(species:"weepinbell", height: 10, weight: 64, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png")
# Pokedex.create(species:"victreebel", height: 17, weight: 155, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png")
# Pokedex.create(species:"tentacool", height: 9, weight: 455, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png")
# Pokedex.create(species:"tentacruel", height: 16, weight: 550, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png")
# Pokedex.create(species:"geodude", height: 4, weight: 200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png")
# Pokedex.create(species:"graveler", height: 10, weight: 1050, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png")
# Pokedex.create(species:"golem", height: 14, weight: 3000, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/76.png")
# Pokedex.create(species:"ponyta", height: 10, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png")
# Pokedex.create(species:"rapidash", height: 17, weight: 950, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/78.png")
# Pokedex.create(species:"slowpoke", height: 12, weight: 360, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/79.png")
# Pokedex.create(species:"slowbro", height: 16, weight: 785, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/80.png")
# Pokedex.create(species:"magnemite", height: 3, weight: 60, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/81.png")
# Pokedex.create(species:"magneton", height: 10, weight: 600, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/82.png")
# Pokedex.create(species:"farfetchd", height: 8, weight: 150, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/83.png")
# Pokedex.create(species:"doduo", height: 14, weight: 392, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/84.png")
# Pokedex.create(species:"dodrio", height: 18, weight: 852, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/85.png")
# Pokedex.create(species:"seel", height: 11, weight: 900, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/86.png")
# Pokedex.create(species:"dewgong", height: 17, weight: 1200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/87.png")
# Pokedex.create(species:"grimer", height: 9, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/88.png")
# Pokedex.create(species:"muk", height: 12, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/89.png")
# Pokedex.create(species:"shellder", height: 3, weight: 40, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/90.png")
# Pokedex.create(species:"cloyster", height: 15, weight: 1325, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/91.png")
# Pokedex.create(species:"gastly", height: 13, weight: 1, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/92.png")
# Pokedex.create(species:"haunter", height: 16, weight: 1, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/93.png")
# Pokedex.create(species:"gengar", height: 15, weight: 405, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png")
# Pokedex.create(species:"onix", height: 88, weight: 2100, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/95.png")
# Pokedex.create(species:"drowzee", height: 10, weight: 324, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/96.png")
# Pokedex.create(species:"hypno", height: 16, weight: 756, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/97.png")
# Pokedex.create(species:"krabby", height: 4, weight: 65, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png")
# Pokedex.create(species:"kingler", height: 13, weight: 600, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/99.png")
# Pokedex.create(species:"voltorb", height: 5, weight: 104, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/100.png")
# Pokedex.create(species:"electrode", height: 12, weight: 666, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/101.png")
# Pokedex.create(species:"exeggcute", height: 4, weight: 25, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/102.png")
# Pokedex.create(species:"exeggutor", height: 20, weight: 1200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/103.png")
# Pokedex.create(species:"cubone", height: 4, weight: 65, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/104.png")
# Pokedex.create(species:"marowak", height: 10, weight: 450, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/105.png")
# Pokedex.create(species:"hitmonlee", height: 15, weight: 498, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/106.png")
# Pokedex.create(species:"hitmonchan", height: 14, weight: 502, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/107.png")
# Pokedex.create(species:"lickitung", height: 12, weight: 655, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/108.png")
# Pokedex.create(species:"koffing", height: 6, weight: 10, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/109.png")
# Pokedex.create(species:"weezing", height: 12, weight: 95, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/110.png")
# Pokedex.create(species:"rhyhorn", height: 10, weight: 1150, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/111.png")
# Pokedex.create(species:"rhydon", height: 19, weight: 1200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/112.png")
# Pokedex.create(species:"chansey", height: 11, weight: 346, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/113.png")
# Pokedex.create(species:"tangela", height: 10, weight: 350, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/114.png")
# Pokedex.create(species:"kangaskhan", height: 22, weight: 800, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/115.png")
# Pokedex.create(species:"horsea", height: 4, weight: 80, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/116.png")
# Pokedex.create(species:"seadra", height: 12, weight: 250, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/117.png")
# Pokedex.create(species:"goldeen", height: 6, weight: 150, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/118.png")
# Pokedex.create(species:"seaking", height: 13, weight: 390, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png")
# Pokedex.create(species:"staryu", height: 8, weight: 345, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/120.png")
# Pokedex.create(species:"starmie", height: 11, weight: 800, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/121.png")
# Pokedex.create(species:"mr-mime", height: 13, weight: 545, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/122.png")
# Pokedex.create(species:"scyther", height: 15, weight: 560, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/123.png")
# Pokedex.create(species:"jynx", height: 14, weight: 406, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/124.png")
# Pokedex.create(species:"electabuzz", height: 11, weight: 300, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/125.png")
# Pokedex.create(species:"magmar", height: 13, weight: 445, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/126.png")
# Pokedex.create(species:"pinsir", height: 15, weight: 550, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/127.png")
# Pokedex.create(species:"tauros", height: 14, weight: 884, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/128.png")
# Pokedex.create(species:"magikarp", height: 9, weight: 100, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/129.png")
# Pokedex.create(species:"gyarados", height: 65, weight: 2350, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png")
# Pokedex.create(species:"lapras", height: 25, weight: 2200, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/131.png")
# Pokedex.create(species:"ditto", height: 3, weight: 40, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png")
# Pokedex.create(species:"eevee", height: 3, weight: 65, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png")
# Pokedex.create(species:"vaporeon", height: 10, weight: 290, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/134.png")
# Pokedex.create(species:"jolteon", height: 8, weight: 245, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/135.png")
# Pokedex.create(species:"flareon", height: 9, weight: 250, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/136.png")
# Pokedex.create(species:"porygon", height: 8, weight: 365, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png")
# Pokedex.create(species:"omanyte", height: 4, weight: 75, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/138.png")
# Pokedex.create(species:"omastar", height: 10, weight: 350, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/139.png")
# Pokedex.create(species:"kabuto", height: 5, weight: 115, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/140.png")
# Pokedex.create(species:"kabutops", height: 13, weight: 405, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/141.png")
# Pokedex.create(species:"aerodactyl", height: 18, weight: 590, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/142.png")
# Pokedex.create(species:"snorlax", height: 21, weight: 4600, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png")
# Pokedex.create(species:"articuno", height: 17, weight: 554, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/144.png")
# Pokedex.create(species:"zapdos", height: 16, weight: 526, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png")
# Pokedex.create(species:"moltres", height: 20, weight: 600, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/146.png")
# Pokedex.create(species:"dratini", height: 18, weight: 33, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/147.png")
# Pokedex.create(species:"dragonair", height: 40, weight: 165, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/148.png")
# Pokedex.create(species:"dragonite", height: 22, weight: 2100, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png")
# Pokedex.create(species:"mewtwo", height: 20, weight: 1220, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png")
# Pokedex.create(species:"mew", height: 4, weight: 40, image_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/151.png")


# POKETYPES

# Poketype.create(pokemon_type: 'normal')
# Poketype.create(pokemon_type: 'fighting')
# Poketype.create(pokemon_type: 'flying')
# Poketype.create(pokemon_type: 'poison')
# Poketype.create(pokemon_type: 'ground')
# Poketype.create(pokemon_type: 'rock')
# Poketype.create(pokemon_type: 'bug')
# Poketype.create(pokemon_type: 'ghost')
# Poketype.create(pokemon_type: 'steel')
# Poketype.create(pokemon_type: 'fire')
# Poketype.create(pokemon_type: 'water')
# Poketype.create(pokemon_type: 'grass')
# Poketype.create(pokemon_type: 'electric')
# Poketype.create(pokemon_type: 'psychic')
# Poketype.create(pokemon_type: 'ice')
# Poketype.create(pokemon_type: 'dragon')
# Poketype.create(pokemon_type: 'dark')
# Poketype.create(pokemon_type: 'fairy')

# PokedexES_POKETYPES

# Pokedexes_poketype.create(Pokedex_id: 1,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 1,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 2,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 2,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 3,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 3,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 4,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 5,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 6,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 6,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 7,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 8,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 9,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 10,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 11,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 12,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 12,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 13,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 13,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 14,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 14,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 15,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 15,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 16,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 16,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 17,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 17,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 18,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 18,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 19,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 20,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 21,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 21,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 22,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 22,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 23,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 24,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 25,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 26,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 27,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 28,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 29,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 30,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 31,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 31,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 32,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 33,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 34,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 34,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 35,poketype_id: 18)
# Pokedexes_poketype.create(Pokedex_id: 36,poketype_id: 18)
# Pokedexes_poketype.create(Pokedex_id: 37,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 38,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 39,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 39,poketype_id: 18)
# Pokedexes_poketype.create(Pokedex_id: 40,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 40,poketype_id: 18)
# Pokedexes_poketype.create(Pokedex_id: 41,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 41,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 42,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 42,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 43,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 43,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 44,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 44,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 45,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 45,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 46,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 46,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 47,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 47,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 48,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 48,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 49,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 49,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 50,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 51,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 52,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 53,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 54,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 55,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 56,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 57,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 58,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 59,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 60,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 61,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 62,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 62,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 63,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 64,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 65,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 66,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 67,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 68,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 69,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 69,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 70,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 70,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 71,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 71,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 72,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 72,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 73,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 73,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 74,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 74,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 75,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 75,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 76,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 76,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 77,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 78,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 79,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 79,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 80,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 80,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 81,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 81,poketype_id: 9)
# Pokedexes_poketype.create(Pokedex_id: 82,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 82,poketype_id: 9)
# Pokedexes_poketype.create(Pokedex_id: 83,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 83,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 84,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 84,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 85,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 85,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 86,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 87,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 87,poketype_id: 15)
# Pokedexes_poketype.create(Pokedex_id: 88,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 89,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 90,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 91,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 91,poketype_id: 15)
# Pokedexes_poketype.create(Pokedex_id: 92,poketype_id: 8)
# Pokedexes_poketype.create(Pokedex_id: 92,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 93,poketype_id: 8)
# Pokedexes_poketype.create(Pokedex_id: 93,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 94,poketype_id: 8)
# Pokedexes_poketype.create(Pokedex_id: 94,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 95,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 95,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 96,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 97,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 98,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 99,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 100,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 101,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 102,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 102,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 103,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 103,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 104,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 105,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 106,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 107,poketype_id: 2)
# Pokedexes_poketype.create(Pokedex_id: 108,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 109,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 110,poketype_id: 4)
# Pokedexes_poketype.create(Pokedex_id: 111,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 111,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 112,poketype_id: 5)
# Pokedexes_poketype.create(Pokedex_id: 112,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 113,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 114,poketype_id: 12)
# Pokedexes_poketype.create(Pokedex_id: 115,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 116,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 117,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 118,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 119,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 120,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 121,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 121,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 122,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 122,poketype_id: 18)
# Pokedexes_poketype.create(Pokedex_id: 123,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 123,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 124,poketype_id: 15)
# Pokedexes_poketype.create(Pokedex_id: 124,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 125,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 126,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 127,poketype_id: 7)
# Pokedexes_poketype.create(Pokedex_id: 128,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 129,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 130,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 130,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 131,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 131,poketype_id: 15)
# Pokedexes_poketype.create(Pokedex_id: 132,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 133,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 134,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 135,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 136,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 137,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 138,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 138,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 139,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 139,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 140,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 140,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 141,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 141,poketype_id: 11)
# Pokedexes_poketype.create(Pokedex_id: 142,poketype_id: 6)
# Pokedexes_poketype.create(Pokedex_id: 142,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 143,poketype_id: 1)
# Pokedexes_poketype.create(Pokedex_id: 144,poketype_id: 15)
# Pokedexes_poketype.create(Pokedex_id: 144,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 145,poketype_id: 13)
# Pokedexes_poketype.create(Pokedex_id: 145,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 146,poketype_id: 10)
# Pokedexes_poketype.create(Pokedex_id: 146,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 147,poketype_id: 16)
# Pokedexes_poketype.create(Pokedex_id: 148,poketype_id: 16)
# Pokedexes_poketype.create(Pokedex_id: 149,poketype_id: 16)
# Pokedexes_poketype.create(Pokedex_id: 149,poketype_id: 3)
# Pokedexes_poketype.create(Pokedex_id: 150,poketype_id: 14)
# Pokedexes_poketype.create(Pokedex_id: 151,poketype_id: 14)