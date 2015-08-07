class OpenAuth2Controller < ApplicationController
  before_action :new, only:[:oauth]
  def oauth
    @auth_uri = OpenAuth2.get_auth_uri
  end
  def new
    if OpenAuth2.where(:id=>1).first == nil
      @open_auth = OpenAuth2.create(
        :authorization_uri => 'https://accounts.google.com/o/oauth2/auth',
        :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
        :redirect_uri => 'http://wxtest.aggso.com/oauth2callback',
        :client_id => '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com',
        :client_secret => 'VhUtzfBcK5s27z9rtkaH12Mz',
        :scope => 'https://www.google.com/m8/feeds/'
        # @open_auth.save
      )
    end
  end
end
