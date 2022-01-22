require "test_helper"

class CalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get imc" do
    get calculator_imc_url
    assert_response :success
  end
end
