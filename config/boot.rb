# Defines our constants
RACK_ENV = ENV['RACK_ENV'] ||= 'development'  unless defined?(RACK_ENV)
PADRINO_ROOT = File.expand_path('../..', __FILE__) unless defined?(PADRINO_ROOT)

# Load our dependencies
require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
Bundler.require(:default, RACK_ENV)
CarrierWave.root = File.join(Padrino.root, "public")

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => 'xxx',
    :aws_secret_access_key => 'yyy',
    :region                => 'eu-west-1',
    :host                  => 's3.example.com',
    :endpoint              => 'https://s3.example.com:8080'
  }
  config.fog_directory  = 'name_of_directory'
  config.fog_public     =  false
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end

##
# ## Enable devel logging
#
# Padrino::Logger::Config[:development][:log_level]  = :devel
# Padrino::Logger::Config[:development][:log_static] = true
#
# ## Configure your I18n
#
# I18n.default_locale = :en
# I18n.enforce_available_locales = false
#
# ## Configure your HTML5 data helpers
#
# Padrino::Helpers::TagHelpers::DATA_ATTRIBUTES.push(:dialog)
# text_field :foo, :dialog => true
# Generates: <input type="text" data-dialog="true" name="foo" />
#
# ## Add helpers to mailer
#
# Mail::Message.class_eval do
#   include Padrino::Helpers::NumberHelpers
#   include Padrino::Helpers::TranslationHelpers
# end

##
# Add your before (RE)load hooks here
#
Padrino.before_load do
end

##
# Add your after (RE)load hooks here
#
Padrino.after_load do
end

Padrino.load!
