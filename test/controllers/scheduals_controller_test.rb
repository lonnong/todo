require 'test_helper'

class SchedualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedual = scheduals(:one)
  end

  test "should get index" do
    get scheduals_url
    assert_response :success
  end

  test "should get new" do
    get new_schedual_url
    assert_response :success
  end

  test "should create schedual" do
    assert_difference('Schedual.count') do
      post scheduals_url, params: { schedual: { comp: @schedual.comp, item: @schedual.item, stars: @schedual.stars } }
    end

    assert_redirected_to schedual_url(Schedual.last)
  end

  test "should show schedual" do
    get schedual_url(@schedual)
    assert_response :success
  end

  test "should get edit" do
    get edit_schedual_url(@schedual)
    assert_response :success
  end

  test "should update schedual" do
    patch schedual_url(@schedual), params: { schedual: { comp: @schedual.comp, item: @schedual.item, stars: @schedual.stars } }
    assert_redirected_to schedual_url(@schedual)
  end

  test "should destroy schedual" do
    assert_difference('Schedual.count', -1) do
      delete schedual_url(@schedual)
    end

    assert_redirected_to scheduals_url
  end
end
