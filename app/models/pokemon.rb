class Pokemon < ApplicationRecord
  validates :id, :name, :baseExperience, :hp, :attack, :defense, :specialAttack, :specialDefense, :speed, :weight, :height, presence: true
  validates :id, :name, uniqueness: true

  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  has_many :pokemon_abilites
  has_many :abilites, through: :pokemon_abilities

  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves

  paginates_per 25
end
