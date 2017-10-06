require 'test_helper'

class LightingProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lighting_product = lighting_products(:one)
  end

  test "should get index" do
    get lighting_products_url
    assert_response :success
  end

  test "should get new" do
    get new_lighting_product_url
    assert_response :success
  end

  test "should create lighting_product" do
    assert_difference('LightingProduct.count') do
      post lighting_products_url, params: { lighting_product: { index: @lighting_product.index, show: @lighting_product.show } }
    end

    assert_redirected_to lighting_product_url(LightingProduct.last)
  end

  test "should show lighting_product" do
    get lighting_product_url(@lighting_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_lighting_product_url(@lighting_product)
    assert_response :success
  end

  test "should update lighting_product" do
    patch lighting_product_url(@lighting_product), params: { lighting_product: { index: @lighting_product.index, show: @lighting_product.show } }
    assert_redirected_to lighting_product_url(@lighting_product)
  end

  test "should destroy lighting_product" do
    assert_difference('LightingProduct.count', -1) do
      delete lighting_product_url(@lighting_product)
    end

    assert_redirected_to lighting_products_url
  end
end
