require "test_helper"

class PrintingPricesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get printing_prices_index_url
    assert_response :success
  end

  test "should get show" do
    get printing_prices_show_url
    assert_response :success
  end

  test "should get create" do
    get printing_prices_create_url
    assert_response :success
  end

  test "should get update" do
    get printing_prices_update_url
    assert_response :success
  end
end
