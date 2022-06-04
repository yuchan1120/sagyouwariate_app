require "test_helper"

class DeliverWorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deliver_works_index_url
    assert_response :success
  end
end
