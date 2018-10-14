class CategoriesController < ApplicationController
    def new
        
    end
    
    def create
        @category = Category.new(category_params)
        debugger
        if @category.save
          redirect_to root_path
        
        end
    end
  
    private

    def category_params
      params.require(:category).permit(:name, :restaurant)
    end
end
