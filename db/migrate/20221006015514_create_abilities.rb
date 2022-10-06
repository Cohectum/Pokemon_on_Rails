class CreateAbilities < ActiveRecord::Migration[7.0]
  def change
    create_table :abilities do |t|
      t.integer :abilityId
      t.string :name
      t.string :effect
      t.string :flavourText

      t.timestamps
    end
  end
end
