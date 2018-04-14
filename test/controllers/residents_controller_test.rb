require 'test_helper'

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get residents_new_url
    assert_response :success
  end

end
