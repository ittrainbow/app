require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 2
    assert_select 'main ul.catalog li', 3
    assert_select 'h2', 'Programming Ruby 1.9'
    assert_select '.price', '10.00 ₽'
  end

end
