class RecipesController < ApplicationController

    def index 
        @recipes = Recipe.all
    end

    def show 
        @recipe = Recipe.find(params[:id])
    end 

    def new
        @recipe = Recipe.new 
    end 

    def create 
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end 

    private 

    def recipe_params 
        params.require(:recipe).permit(:name, :user_id, ingredient_ids: [])
    end
end
