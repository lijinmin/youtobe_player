require 'googleauth'
require 'signet'
require 'google/api_client'
require 'google/api_client/client_secrets'
require 'json'
require 'launchy'
require 'thin'
require 'rest-client'
class Oauth2
  def self.credentials
    client = Signet::OAuth2::Client.new(
      :authorization_uri => 'https://accounts.google.com/o/oauth2/auth',
      :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
      :redirect_uri => 'http://wxtest.aggso.com/oauth2callback',
      :client_id => '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com',
      :client_secret => 'VhUtzfBcK5s27z9rtkaH12Mz',
      :scope => 'https://www.google.com/m8/feeds/'
      )
     puts url = (client.authorization_uri(options={})).to_s
     # res = RestClient.get(url)
      # server = Thin::Server.new('0.0.0.0', 8080) do
      #   run lambda { |env|
      #     # Exchange the auth code & quit
      #     req = Rack::Request.new(env)
      #     auth.code = req['code']
      #     auth.fetch_access_token!
      #     server.stop()
      #     [200, {'Content-Type' => 'text/html'}, RESPONSE_HTML]
      #   }
      # end
  end
   def self.invoke_remote(url, playload)
      r = RestClient::Request.execute(
        {
          method: :post,
          url: url,
          playload: payload,
          headers: { content_type: 'application/xml' }
        }
      )
    end
end