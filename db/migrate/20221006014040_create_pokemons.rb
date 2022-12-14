class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.text :name
      t.integer :baseExperience
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :specialAttack
      t.integer :specialDefense
      t.integer :speed
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
