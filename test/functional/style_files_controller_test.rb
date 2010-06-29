require 'test_helper'

class StyleFilesControllerTest < ActionController::TestCase
  setup do
    @style_file = style_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:style_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create style_file" do
    assert_difference('StyleFile.count') do
      post :create, :style_file => @style_file.attributes
    end

    assert_redirected_to style_file_path(assigns(:style_file))
  end

  test "should show style_file" do
    get :show, :id => @style_file.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @style_file.to_param
    assert_response :success
  end

  test "should update style_file" do
    put :update, :id => @style_file.to_param, :style_file => @style_file.attributes
    assert_redirected_to style_file_path(assigns(:style_file))
  end

  test "should destroy style_file" do
    assert_difference('StyleFile.count', -1) do
      delete :destroy, :id => @style_file.to_param
    end

    assert_redirected_to style_files_path
  end
end
