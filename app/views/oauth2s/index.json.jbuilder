json.array!(@oauth2s) do |oauth2|
  json.extract! oauth2, :id, :authorization_uri, :token_credential_uri, :redirect_uri, :client_id, :client_secret, :scope, :code, :state, :expires_in, :update, :access_token, :token_type
  json.url oauth2_url(oauth2, format: :json)
end
