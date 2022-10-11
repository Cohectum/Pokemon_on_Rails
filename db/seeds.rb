require 'json'
require 'rest-client'
require 'open-uri'


# Seeding Abilities
267.times do |index|
  url = "https://pokeapi.co/api/v2/ability/#{index + 1}"
  current_ability = URI.open(url).read
  ability = JSON.parse(current_ability)
  ability_text = "";

  ability['effect_entries'].each do |a|
    if a['language']['name'] == "en"
      ability_text = a['effect']
    end
  end

  new_ability = Ability.new(
    id: ability['id'],
    name: ability['name'],
    effect: ability_text
  )
  new_ability.save
end

# Seeding Types
18.times do |index|
  url = "https://pokeapi.co/api/v2/type/#{index + 1}"
  current_type = URI.open(url).read
  type = JSON.parse(current_type)

  new_type = Type.new(
    id: type['id'],
    name: type['name'],
  )
  new_type.save
end


# Seeding Moves
826.times do |index|
  url = "https://pokeapi.co/api/v2/move/#{index + 1}"
  current_move = URI.open(url).read
  move = JSON.parse(current_move)
  effect_text = ""

  move['effect_entries'].each do |m|
    if m['language']['name'] == "en"
      effect_text = m['effect']
    end
  end

  new_move = Move.new(
    id: move['id'],
    name: move['name'],
    accuracy: move['accuracy'],
    effect: effect_text,
    power: move['power'],
    pp: move['pp']
  )

  new_move.save
end


# Seeding Pokemon
url = "https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0"
pokemon_list = URI.open(url).read
pokemons = JSON.parse(pokemon_list)

903.times do |index|
  pokemon_url = pokemons["results"][index]["url"]
  current_pokemon = URI.open(pokemon_url).read
  pokemon = JSON.parse(current_pokemon)
  pokemon_id = pokemon['id'];

  new_pokemon = Pokemon.create(
    id: pokemon_id,
    name: pokemon['name'],
    baseExperience: pokemon['base_experience'],
    hp: pokemon["stats"][0]['base_stat'],
    attack: pokemon["stats"][1]['base_stat'],
    defense: pokemon["stats"][2]['base_stat'],
    specialAttack: pokemon["stats"][3]['base_stat'],
    specialDefense: pokemon["stats"][4]['base_stat'],
    speed: pokemon["stats"][5]['base_stat'],
    weight: pokemon["weight"],
    height: pokemon["height"]
  )

  new_pokemon.save

  # Seeding Sprites
  new_sprite = Sprite.new(
    spriteFront: pokemon['sprites']['front_default'],
    spriteBack: pokemon['sprites']['back_default'],
    spriteShinyFront: pokemon['sprites']['front_shiny'],
    spriteShinyBack: pokemon['sprites']['back_shiny'],
    spriteFemaleShinyFront: pokemon['sprites']['front_shiny_female'],
    spriteFemaleShinyBack: pokemon['sprites']['back_shiny_female'],
    spriteFemaleBack: pokemon['sprites']['back_female'],
    spriteFemaleFront: pokemon['sprites']['front_female'],
    pokemon_id: pokemon['id']
  )
  new_sprite.save

  # Seeding Ability instances
  pokemon['abilities'].each do |a|
    ability_url = a['ability']['url']
    new_pokemon_ability = PokemonAbility.new(
      pokemon_id: pokemon_id,
      ability_id: ability_url[34..(ability_url.length)]
    )
    new_pokemon_ability.save
  end

  # Seeding Move instances
  pokemon['moves'].each do |m|
    move_url = m['move']['url']
    new_pokemon_move = PokemonMove.new(
      pokemon_id: pokemon_id,
      move_id: move_url[31..(move_url.length - 1)]
    )
    new_pokemon_move.save
  end

  # Seeding Type instances
  pokemon['types'].each do |t|
    type_url = t['type']['url']
    new_pokemon_type = PokemonType.new(
      pokemon_id: pokemon_id,
      type_id: type_url[31..(type_url.length)]
    )
    new_pokemon_type.save
  end
end