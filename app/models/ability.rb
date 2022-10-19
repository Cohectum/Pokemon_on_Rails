class Ability < ApplicationRecord
  has_many :pokemon_abilities
  has_many :pokemon, through: :pokemon_abilities
  paginates_per 25
end
