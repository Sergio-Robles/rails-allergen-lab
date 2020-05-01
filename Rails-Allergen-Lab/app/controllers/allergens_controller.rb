class AllergensController < ApplicationController

    def show 
        @allergen = Allergen.find(params[:id])
    end

    def new 
        @users = User.all
        @ingredients = Ingredient.all
        @allergen = Allergen.new
    end

    def create 
        @allergen = Allergen.create(allergen_params)
        redirect_to allergen_path(@allergen)
    end 

    
    private 

    def allergen_params 
        params.require(:allergen).permit(:user_id, :ingredient_id)
    end

end
