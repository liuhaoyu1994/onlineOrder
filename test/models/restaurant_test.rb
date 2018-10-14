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
end
