class CategoriesController < ApplicationController
    def new
        
    end
    
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @category = @restaurant.categories.build(category_params)
        if @category.save
          redirect_to @restaurant
        else
          redirect_to @restaurant
        end
    end
  
    private

    def category_params
      params.require(:category).permit(:name, :restaurant_id)
    end
    
    
end
