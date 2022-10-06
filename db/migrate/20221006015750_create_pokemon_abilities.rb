class CreatePokemonAbilities < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_abilities do |t|
      t.integer :pokemonId
      t.integer :abilityId
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.belongs_to :ability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
