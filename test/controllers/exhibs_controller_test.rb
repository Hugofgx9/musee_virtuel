require 'test_helper'

class ExhibsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exhib = exhibs(:one)
  end

  test "should get index" do
    get exhibs_url
    assert_response :success
  end

  test "should get new" do
    get new_exhib_url
    assert_response :success
  end

  test "should create exhib" do
    assert_difference('Exhib.count') do
      post exhibs_url, params: { exhib: { description: @exhib.description, title: @exhib.title } }
    end

    assert_redirected_to exhib_url(Exhib.last)
  end

  test "should show exhib" do
    get exhib_url(@exhib)
    assert_response :success
  end

  test "should get edit" do
    get edit_exhib_url(@exhib)
    assert_response :success
  end

  test "should update exhib" do
    patch exhib_url(@exhib), params: { exhib: { description: @exhib.description, title: @exhib.title } }
    assert_redirected_to exhib_url(@exhib)
  end

  test "should destroy exhib" do
    assert_difference('Exhib.count', -1) do
      delete exhib_url(@exhib)
    end

    assert_redirected_to exhibs_url
  end
end
