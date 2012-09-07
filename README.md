# Omniauth::Slc

An Omniauth strategy for authorizing with the Shared Learning Collaborative.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-slc'

And then execute:

    $ bundle

## Usage

In your omniauth.rb initializer add the following:

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slc, ENV['SLC_KEY'], ENV['SLC_SECRET']
end

To set up the slc sandbox provider, you can configure the slc provider as follows:

provider :slc, ENV['SLC_KEY'], ENV['SLC_SECRET'], :setup => lambda{|env| 
   env['omniauth.strategy'].options[:client_options].site = 'https://api.sandbox.slcedu.org'
}

## Examples

Please see https://github.com/khoffma4/slc-example for an example of how to use quickly get up and running with the Shared Learning Collaborative API.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
