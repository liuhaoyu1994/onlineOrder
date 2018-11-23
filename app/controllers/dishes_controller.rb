class DishesController < ApplicationController
    def new
        
    end
    
    def show
        @dish = Dish.find(params[:id])
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
    
    def update
      @dish = Dish.find(params[:id])
      if @dish.update_attributes(dish_params)
        flash[:success]= "Updated"
        redirect_to @dish
      else
        redirect_to @dish
      end
    end
    private
    
    def dish_params
      params.require(:dish).permit(:name, :category_id, :price)
    end
end
