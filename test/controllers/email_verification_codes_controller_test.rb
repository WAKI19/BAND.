require "test_helper"

class EmailVerificationCodesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get email_verification_codes_new_url
    assert_response :success
  end
end
