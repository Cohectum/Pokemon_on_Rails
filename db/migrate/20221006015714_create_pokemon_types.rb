class CreatePokemonTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_types do |t|
      t.integer :pokemonId
      t.integer :typeId
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.belongs_to :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
