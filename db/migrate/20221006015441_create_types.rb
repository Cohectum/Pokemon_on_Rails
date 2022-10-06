class CreateTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :types do |t|
      t.integer :typeId
      t.string :name
      t.string :class

      t.timestamps
    end
  end
end
