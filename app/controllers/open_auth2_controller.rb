class OpenAuth2Controller < ApplicationController
  def oauth
    @auth_uri = OpenAuth.get_auth_uri
  end
end
