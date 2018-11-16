class DishesController < ApplicationController
    def new
        
    end
    
    def show

    end
    
    def create
        @category = Category.find(params[:category_id])
        @dish = @category.dishes.build(dish_params)
        if @dish.save
          redirect_to @category
        else
          redirect_to @category
        end
    end
    
        private

    def dish_params
      params.require(:dish).permit(:name, :category_id)
    end
end
