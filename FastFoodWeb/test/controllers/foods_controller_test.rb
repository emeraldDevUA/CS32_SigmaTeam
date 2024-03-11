require "test_helper"

class FoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foods_index_url
    assert_response :success
  end

  test "should get pizza" do
    get foods_pizza_url
    assert_response :success
  end

  test "should get burgers" do
    get foods_burgers_url
    assert_response :success
  end

  test "should get sushi" do
    get foods_sushi_url
    assert_response :success
  end
end
