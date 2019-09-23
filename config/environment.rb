# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'person_write@list.ru',
  :password => 'Person-write-369',
  :address => 'smtp.mail.ru',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true,
  :openssl_verify_mode    => "none",  
  :ssl => true,
  :tls => true
}