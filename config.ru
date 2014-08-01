require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => 'localhost:9393',
    :user_name => 'postmaster@sandboxb5a4a81c15464b55b599ead106ca91eb.mailgun.org',
    :password =>  'mailgun.com',
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end