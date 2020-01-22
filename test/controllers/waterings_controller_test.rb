require 'test_helper'

class WateringsControllerTest < ActionDispatch::IntegrationTest
  test "should get date" do
    get waterings_date_url
    assert_response :success
  end

  test "should get amount" do
    get waterings_amount_url
    assert_response :success
  end

end
