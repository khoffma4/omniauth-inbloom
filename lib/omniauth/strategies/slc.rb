require "omniauth-slc/version"
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Slc < OmniAuth::Strategies::OAuth2
      option :name, "slc"

      option :client_options, {:site => "https://api.slcedu.org",
                               :authorize_url => 'api/oauth/authorize',
                               :token_url => 'api/oauth/token'}

    end
  end
end