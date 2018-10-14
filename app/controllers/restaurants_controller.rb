class RestaurantsController < ApplicationController
    def new
        @restaurant = current_user.restaurants.build
    end
    
    def index
        @restaurants = Restaurant.all
    end
    
    def show
        @restaurant = Restaurant.find(params[:id])
        @categories = @restaurant.categories
        @new_category = @restaurant.categories.build
    end
    
    def create
        @user = current_user
        @restaurant = @user.restaurants.build(restaurant_params)
        if @restaurant.save
          redirect_to restaurants_path
        else
          render 'new'
        end
    end
  
    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :photo, :users)
    end

end
