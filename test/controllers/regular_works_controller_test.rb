require "test_helper"

class RegularWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get regular_works_index_url
    assert_response :success
  end
end
