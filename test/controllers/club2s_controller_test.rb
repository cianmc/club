require 'test_helper'

class Club2sControllerTest < ActionController::TestCase
  setup do
    @club2 = club2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:club2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club2" do
    assert_difference('Club2.count') do
      post :create, club2: { address: @club2.address, coach_id: @club2.coach_id, member_id: @club2.member_id, name: @club2.name }
    end

    assert_redirected_to club2_path(assigns(:club2))
  end

  test "should show club2" do
    get :show, id: @club2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club2
    assert_response :success
  end

  test "should update club2" do
    patch :update, id: @club2, club2: { address: @club2.address, coach_id: @club2.coach_id, member_id: @club2.member_id, name: @club2.name }
    assert_redirected_to club2_path(assigns(:club2))
  end

  test "should destroy club2" do
    assert_difference('Club2.count', -1) do
      delete :destroy, id: @club2
    end

    assert_redirected_to club2s_path
  end
end
