class Oauth2 < ActiveRecord::Base
 def self.get_auth_uri
    client = Oauth.credentials
    auth_uri = (client.authorization_uri(options={})).to_s
  end
  def self.save_oauth_code(code)
    open_auth = Oauth2.where(id: 1).first
    open_auth.code = code
    open_auth.save
  end
  def self.get_access_token
    client = Oauth.credentials
    open_auth= Oauth2.where(id: 1).first
    client.code= open_auth.code
    token_hash = client.fetch_access_token!
    if token_hash != nil
      open_auth.access_token = token_hash["access_token"]
      open_auth.token_type = token_hash["token_type"]
      open_auth.expires_in = token_hash["expires_in"]
      open_auth.update = Time.now
      open_auth.save
    end
    return token_hash
  endend
