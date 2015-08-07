require 'test_helper'

class Oauth2sControllerTest < ActionController::TestCase
  setup do
    @oauth2 = oauth2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oauth2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oauth2" do
    assert_difference('Oauth2.count') do
      post :create, oauth2: { access_token: @oauth2.access_token, authorization_uri: @oauth2.authorization_uri, client_id: @oauth2.client_id, client_secret: @oauth2.client_secret, code: @oauth2.code, expires_in: @oauth2.expires_in, redirect_uri: @oauth2.redirect_uri, scope: @oauth2.scope, state: @oauth2.state, token_credential_uri: @oauth2.token_credential_uri, token_type: @oauth2.token_type, update: @oauth2.update }
    end

    assert_redirected_to oauth2_path(assigns(:oauth2))
  end

  test "should show oauth2" do
    get :show, id: @oauth2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oauth2
    assert_response :success
  end

  test "should update oauth2" do
    patch :update, id: @oauth2, oauth2: { access_token: @oauth2.access_token, authorization_uri: @oauth2.authorization_uri, client_id: @oauth2.client_id, client_secret: @oauth2.client_secret, code: @oauth2.code, expires_in: @oauth2.expires_in, redirect_uri: @oauth2.redirect_uri, scope: @oauth2.scope, state: @oauth2.state, token_credential_uri: @oauth2.token_credential_uri, token_type: @oauth2.token_type, update: @oauth2.update }
    assert_redirected_to oauth2_path(assigns(:oauth2))
  end

  test "should destroy oauth2" do
    assert_difference('Oauth2.count', -1) do
      delete :destroy, id: @oauth2
    end

    assert_redirected_to oauth2s_path
  end
end
