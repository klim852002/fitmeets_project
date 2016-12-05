require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FitmeetsProject
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # ActionMailer::Base.smtp_settings = {
    #   address: "smtp.gmail.com",
    #   port: 587,
    #   user_name: "fitmeets.sg@gmail.com", #ENV['GMAIL_USERNAME']
    #   password: "Candobarge", #ENV['GMAIL_USERNAME']
    #   domain: "mail.google.com",
    #   authentication: :login,
    #   enable_starttls_auto: true
    # }

    ActionMailer::Base.smtp_settings = {
      :user_name => 'fitmeets',
      :password => 'fitmeets123',
      :domain => 'yourdomain.com',
      :address => 'smtp.sendgrid.net',
      :port => 587,
      :authentication => :plain,
      :enable_starttls_auto => true
    }
  end
end
