require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
    

  def setup
    @user = User.first
    @restaurant = @user.restaurants.build(name: "test_rest", address: "123 street")
  end
  
  test "own a restaurant" do
    assert @restaurant.valid?
  end
  
  test "user id should be present" do
    @restaurant.user_id = nil
    assert_not @restaurant.valid?
  end
  
  test "associated categories should be destroyed" do
    @restaurant.save
    @restaurant.categories.create!(name: "test_cate")
    assert_difference 'Category.count', -1 do
      @restaurant.destroy
    end
  end
end
