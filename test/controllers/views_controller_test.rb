require "test_helper"

class ViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get views_top_url
    assert_response :success
  end
end
