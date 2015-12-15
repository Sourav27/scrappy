# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer SMTP settings
ActionMailer::Base.smtp_settings = {
	  :address              => "smtp.gmail.com",
      :port                 => "587",
      :domain               => "scrapwala.herokuapp.com",
      :user_name            => ENV["GMAIL_USERNAME"],
      :password             => ENV["GMAIL_PASSWORD"],
      :authentication       => :login,
      :enable_starttls_auto => true,
	  :openssl_verify_mode  => 'none' 
}