class Allergen < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  has_many :recipes, through: :user
end
