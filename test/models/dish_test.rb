require 'test_helper'

class DishTest < ActiveSupport::TestCase
  
  
  def setup
    @category = Category.first
    @dish = @category.dishes.build(name: "test_dish", price: 5)
  end
  
  test "should be valid" do
    assert @dish.valid?
  end
  
  test "category should be present" do
    @dish.category_id = nil
    assert_not @dish.valid?
  end
end
