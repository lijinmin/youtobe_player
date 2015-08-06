require 'test_helper'

class OpenAuthsControllerTest < ActionController::TestCase
  setup do
    @open_auth = open_auths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_auths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_auth" do
    assert_difference('OpenAuth.count') do
      post :create, open_auth: { access_token: @open_auth.access_token, authorization_uri: @open_auth.authorization_uri, client_id: @open_auth.client_id, client_secret: @open_auth.client_secret, code: @open_auth.code, expires_in: @open_auth.expires_in, redirect_uri: @open_auth.redirect_uri, scope: @open_auth.scope, scope: @open_auth.scope, state: @open_auth.state, token_credential_uri: @open_auth.token_credential_uri, token_type: @open_auth.token_type, update: @open_auth.update }
    end

    assert_redirected_to open_auth_path(assigns(:open_auth))
  end

  test "should show open_auth" do
    get :show, id: @open_auth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_auth
    assert_response :success
  end

  test "should update open_auth" do
    patch :update, id: @open_auth, open_auth: { access_token: @open_auth.access_token, authorization_uri: @open_auth.authorization_uri, client_id: @open_auth.client_id, client_secret: @open_auth.client_secret, code: @open_auth.code, expires_in: @open_auth.expires_in, redirect_uri: @open_auth.redirect_uri, scope: @open_auth.scope, scope: @open_auth.scope, state: @open_auth.state, token_credential_uri: @open_auth.token_credential_uri, token_type: @open_auth.token_type, update: @open_auth.update }
    assert_redirected_to open_auth_path(assigns(:open_auth))
  end

  test "should destroy open_auth" do
    assert_difference('OpenAuth.count', -1) do
      delete :destroy, id: @open_auth
    end

    assert_redirected_to open_auths_path
  end
end
