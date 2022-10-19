class Pokemon < ApplicationRecord
  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  has_many :pokemon_abilites
  has_many :abilites, through: :pokemon_abilities

  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves

  paginates_per 25
end
