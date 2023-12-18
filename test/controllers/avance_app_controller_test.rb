require "test_helper"

class AvanceAppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get avance_app_index_url
    assert_response :success
  end
end
