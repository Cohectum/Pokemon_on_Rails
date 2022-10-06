json.extract! pokemon, :id, :pokemonId, :name, :baseExperience, :hp, :attack, :defense, :specialAttack, :specialDefense, :speed, :weight, :height, :generationId, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
