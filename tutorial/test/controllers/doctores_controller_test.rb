require 'test_helper'

class DoctoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doctores_index_url
    assert_response :success
  end

end
