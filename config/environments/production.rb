Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  
  ActionMailer::Base.smtp_settings = {
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'heroku.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
  
  # more code here
end