class OpenAuth2 < ActiveRecord::Base
  def self.init_open_auth
    if OpenAuth.where(:id=>1).first == nil
      @open_auth = OpenAuth.new
      @open_auth.authorization_uri = 'https://accounts.google.com/o/oauth2/auth'
      @open_auth.token_credential_uri = 'https://accounts.google.com/o/oauth2/token'
      @open_auth.redirect_uri = 'http://wxtest.aggso.com/oauth2callback'
      @open_auth.client_id = '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com'
      @open_auth.client_secret = 'VhUtzfBcK5s27z9rtkaH12Mz'
      @open_auth.scope = 'https://www.google.com/m8/feeds/'
      @open_auth.save
    end

  end
  def self.get_auth_uri
    client = Oauth2.credentials
    auth_uri = (client.authorization_uri(options={})).to_s
  end
  def self.save_oauth_code(code)
    OpenAuth2.init_open_auth
    open_auth = OpenAuth2.where(id: 1).first
    open_auth.code = code
    open_auth.save
  end
  def self.get_access_token
    client = Oauth2.credentials
    open_auth= OpenAuth2.where(id: 1).first
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
  end
end
