class Ability < ApplicationRecord
  validates :id, :name, :effect, presence: true
  validates :id, :name, uniqueness: true

  has_many :pokemon_abilities
  has_many :pokemon, through: :pokemon_abilities
  paginates_per 25
end
