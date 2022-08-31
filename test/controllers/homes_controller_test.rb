require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get –skip-routes" do
    get homes_–skip-routes_url
    assert_response :success
  end
end
