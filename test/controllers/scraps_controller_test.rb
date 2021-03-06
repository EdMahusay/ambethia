require 'test_helper'

class ScrapsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @scrap = scraps(:simple_note)
    @user = users(:ambethia)
    sign_in(@user)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scraps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scrap" do
    assert_difference('Scrap.count') do
      post :create, scrap: { body: @scrap.body, expired_at: @scrap.expired_at, expires_after: @scrap.expires_after, slug: @scrap.slug, syntax: @scrap.syntax, user_id: @scrap.user_id }
    end

    assert_redirected_to scrap_path(assigns(:scrap))
  end

  test "should show scrap" do
    get :show, id: @scrap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scrap
    assert_response :success
  end

  test "should update scrap" do
    patch :update, id: @scrap, scrap: { body: @scrap.body, expired_at: @scrap.expired_at, expires_after: @scrap.expires_after, slug: @scrap.slug, syntax: @scrap.syntax, user_id: @scrap.user_id }
    assert_redirected_to scrap_path(assigns(:scrap))
  end

  test "should destroy scrap" do
    assert_difference('Scrap.count', -1) do
      delete :destroy, id: @scrap
    end

    assert_redirected_to scraps_path
  end
end
