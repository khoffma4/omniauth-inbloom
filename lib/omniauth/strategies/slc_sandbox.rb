require "omniauth-slc/version"

module OmniAuth
  module Strategies
    class SlcSandbox < OmniAuth::Strategies::OAuth2
      option :name, "slc_sandbox"

      option :client_options, {:site => "https://api.sandbox.slcedu.org",
                               :authorize_url => 'api/oauth/authorize',
                               :token_url => 'api/oauth/token'}

    end
  end
end