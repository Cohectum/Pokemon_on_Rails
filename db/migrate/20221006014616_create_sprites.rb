class CreateSprites < ActiveRecord::Migration[7.0]
  def change
    create_table :sprites do |t|
      t.string :spriteFront
      t.string :spriteBack
      t.string :spriteShinyFront
      t.string :spriteShinyBack
      t.string :spriteFemaleShinyFront
      t.string :spriteFemaleShinyBack
      t.string :spriteFemaleBack
      t.string :spriteFemaleFront
      t.belongs_to :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
