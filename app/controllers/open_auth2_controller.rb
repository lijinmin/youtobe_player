class OpenAuth2Controller < ApplicationController
  def oauth2
    @auth_uri = OpenAuth.get_auth_uri
  end
end
