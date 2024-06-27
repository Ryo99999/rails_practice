require "test_helper"

class StaticPsegControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pseg_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pseg_help_url
    assert_response :success
  end
end
