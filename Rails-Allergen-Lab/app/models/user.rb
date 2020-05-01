class User < ApplicationRecord
    has_many :recipes 
    has_many :allergens
    has_many :ingredients, through: :allergens 

    def allergic_ingredients  #return array of strings
        self.allergens.map { |i| i.ingredients.name}.uniq
    end 

    def recipes_ingredients 
        recipes = self.recipes.map { |r| r.ingredients } 
        recipes.map { |i| i.name }
    end

end
