require "test_helper"

class EtaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etum = eta(:one)
  end

  test "should get index" do
    get eta_url, as: :json
    assert_response :success
  end

  test "should create etum" do
    assert_difference('Etum.count') do
      post eta_url, params: { etum: { country: @etum.country, hours: @etum.hours, working_hours: @etum.working_hours } }, as: :json
    end

    assert_response 201
  end

  test "should show etum" do
    get etum_url(@etum), as: :json
    assert_response :success
  end

  test "should update etum" do
    patch etum_url(@etum), params: { etum: { country: @etum.country, hours: @etum.hours, working_hours: @etum.working_hours } }, as: :json
    assert_response 200
  end

  test "should destroy etum" do
    assert_difference('Etum.count', -1) do
      delete etum_url(@etum), as: :json
    end

    assert_response 204
  end
end
