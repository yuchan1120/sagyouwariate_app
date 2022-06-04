require "test_helper"

class ProductManagementWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_management_works_index_url
    assert_response :success
  end
end
