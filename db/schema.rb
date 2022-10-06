# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_06_014500) do
  create_table "pokemons", force: :cascade do |t|
    t.integer "pokemonId"
    t.text "name"
    t.integer "baseExperience"
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "specialAttack"
    t.integer "specialDefense"
    t.integer "speed"
    t.integer "weight"
    t.integer "height"
    t.integer "generationId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprites", force: :cascade do |t|
    t.string "spriteFront"
    t.string "spriteBack"
    t.string "spriteShinyFront"
    t.string "spriteShinyBack"
    t.string "spriteFemaleShinyFront"
    t.string "spriteFemaleShinyBack"
    t.string "spriteFemailBack"
    t.string "spriteFemaleFront"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
