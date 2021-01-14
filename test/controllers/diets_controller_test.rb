require 'test_helper'

class DietsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diet = diets(:one)
  end

  test "should get index" do
    get diets_url, as: :json
    assert_response :success
  end

  test "should create diet" do
    assert_difference('Diet.count') do
      post diets_url, params: { diet: { age: @diet.age, diet_type: @diet.diet_type, duration: @diet.duration, gender: @diet.gender, height: @diet.height, lost_weight: @diet.lost_weight, name: @diet.name, start_weight: @diet.start_weight } }, as: :json
    end

    assert_response 201
  end

  test "should show diet" do
    get diet_url(@diet), as: :json
    assert_response :success
  end

  test "should update diet" do
    patch diet_url(@diet), params: { diet: { age: @diet.age, diet_type: @diet.diet_type, duration: @diet.duration, gender: @diet.gender, height: @diet.height, lost_weight: @diet.lost_weight, name: @diet.name, start_weight: @diet.start_weight } }, as: :json
    assert_response 200
  end

  test "should destroy diet" do
    assert_difference('Diet.count', -1) do
      delete diet_url(@diet), as: :json
    end

    assert_response 204
  end
end
