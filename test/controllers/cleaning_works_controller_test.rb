require "test_helper"

class CleaningWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cleaning_works_index_url
    assert_response :success
  end
end
