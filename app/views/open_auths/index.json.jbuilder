json.array!(@open_auths) do |open_auth|
  json.extract! open_auth, :id, :authorization_uri, :token_credential_uri, :redirect_uri, :client_id, :client_secret, :scope, :code, :state, :scope, :access_token, :token_type, :expires_in, :update
  json.url open_auth_url(open_auth, format: :json)
end
