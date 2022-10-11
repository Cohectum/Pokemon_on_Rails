class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :accuracy
      t.integer :power
      t.integer :pp
      t.string :effect

      t.timestamps
    end
  end
end
