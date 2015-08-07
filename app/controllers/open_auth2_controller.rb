class OpenAuth2Controller < ApplicationController
  before_action :new, only:[:oauth]
  def oauth
    @auth_uri = OpenAuth2.get_auth_uri
  end
  def new
        if OpenAuth2.where(:id=>1).first == nil
      @open_auth = OpenAuth2.new
      @open_auth.authorization_uri = 'https://accounts.google.com/o/oauth2/auth'
      @open_auth.token_credential_uri = 'https://accounts.google.com/o/oauth2/token'
      @open_auth.redirect_uri = 'http://wxtest.aggso.com/oauth2callback'
      @open_auth.client_id = '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com'
      @open_auth.client_secret = 'VhUtzfBcK5s27z9rtkaH12Mz'
      @open_auth.scope = 'https://www.google.com/m8/feeds/'
      @open_auth.save
    end
  end
end
