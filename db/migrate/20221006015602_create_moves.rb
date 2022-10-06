class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.integer :moveId
      t.string :name
      t.integer :accuracy
      t.string :effect
      t.string :flavourText

      t.timestamps
    end
  end
end
