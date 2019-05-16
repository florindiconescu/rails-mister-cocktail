class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, length: { minimum: 1 }
  validates :ingredient, uniqueness: { scope: :cocktail }
end
