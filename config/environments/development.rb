Rails.application.configure do

  config.action_mailer.default_url_options = { host: 'localhost:3030' }

  ActionMailer::Base.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: '587',
    authentication: :plain,
    user_name: ENV['SENDGRID_USERNAME'],
    password: ENV['SENDGRID_PASSWORD'],
    domain: 'heroku.com',
    enable_starttls_auto: true
  }

  # more code here
end