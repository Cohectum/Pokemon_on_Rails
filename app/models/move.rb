class Move < ApplicationRecord
  validates :id, :name, :pp, presence: true
  validates :id, :name, uniqueness: true

  has_many :pokemon_moves
  has_many :pokemon, through: :pokemon_moves

  paginates_per 50
end
