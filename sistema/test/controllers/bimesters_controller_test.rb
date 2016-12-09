require 'test_helper'

class BimestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bimester = bimesters(:one)
  end

  test "should get index" do
    get bimesters_url
    assert_response :success
  end

  test "should get new" do
    get new_bimester_url
    assert_response :success
  end

  test "should create bimester" do
    assert_difference('Bimester.count') do
      post bimesters_url, params: { bimester: { bimestre: @bimester.bimestre, period_id: @bimester.period_id } }
    end

    assert_redirected_to bimester_url(Bimester.last)
  end

  test "should show bimester" do
    get bimester_url(@bimester)
    assert_response :success
  end

  test "should get edit" do
    get edit_bimester_url(@bimester)
    assert_response :success
  end

  test "should update bimester" do
    patch bimester_url(@bimester), params: { bimester: { bimestre: @bimester.bimestre, period_id: @bimester.period_id } }
    assert_redirected_to bimester_url(@bimester)
  end

  test "should destroy bimester" do
    assert_difference('Bimester.count', -1) do
      delete bimester_url(@bimester)
    end

    assert_redirected_to bimesters_url
  end
end
