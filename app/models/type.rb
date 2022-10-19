class Type < ApplicationRecord
  validates :id, :name, presence: true
  validates :id, :name, uniqueness: true

  has_many :pokemon_types
  has_many :pokemon, through: :pokemon_types
end
