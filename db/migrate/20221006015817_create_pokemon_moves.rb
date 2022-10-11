class CreatePokemonMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_moves do |t|
      t.belongs_to :pokemon, null: false, foreign_key: true
      t.belongs_to :move, null: false, foreign_key: true

      t.timestamps
    end
  end
end
