require 'googleauth'
require 'signet'
# require 'google-api-client'
# require 'google/api_client/client_secrets'
require 'json'
# require 'launchy'
# require 'thin'
require 'rest-client'
class Oauth
  def self.credentials
    client = Signet::OAuth2::Client.new(
      :authorization_uri => 'https://accounts.google.com/o/oauth2/auth',
      :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
      :redirect_uri => 'http://wxtest.aggso.com/oauth2callback',
      :client_id => '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com',
      :client_secret => 'VhUtzfBcK5s27z9rtkaH12Mz',
      :scope => 'https://www.google.com/m8/feeds/'
      )
    return client
  end
end