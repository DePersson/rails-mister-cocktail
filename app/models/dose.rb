class Dose < ApplicationRecord
  belongs_to :ingredient, dependent: :destroy
  belongs_to :cocktail

  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  validates :ingredient, presence: true
end
