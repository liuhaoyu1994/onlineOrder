require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  
  def setup
    @restaurant = Restaurant.first
    @category = @restaurant.categories.build(name: "test_cate")
  end
  
  test "should be valid" do
    assert @category.valid?
  end
  
  test "restaurant should be present" do
    @category.restaurant_id = nil
    assert_not @category.valid?
  end
  
  test "associated dishes should be destroyed" do
    @category.save
    @category.dishes.create!(name: "test_dish")
    assert_difference 'Dish.count', -1 do
      @category.destroy
    end
  end
end