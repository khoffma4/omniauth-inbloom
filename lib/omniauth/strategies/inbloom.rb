require "omniauth-inbloom/version"
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Inbloom < OmniAuth::Strategies::OAuth2
      option :name, "inbloom"

      option :client_options, {:site => "https://api.inbloom.org",
                               :authorize_url => 'api/oauth/authorize',
                               :token_url => 'api/oauth/token'}
    end
  end
end