# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer SMTP settings
ActionMailer::Base.smtp_settings = {
	  :address              => "smtp.sendgrid.com",
      :port                 => "587",
      :domain               => "scrapwala.herokuapp.com",
      :user_name            => ENV["SENDGRID_USERNAME"],
      :password             => ENV["SENDGRID_PASSWORD"],
      :authentication       => :plain,
      :enable_starttls_auto => true,
	  :openssl_verify_mode  => 'none' 
}