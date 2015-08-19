require 'sms-easy'

SMSEasy::Client.config['from_address'] = "notify@splatoon-notify.work"

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.mandrillapp.com',
  :port           => '2525',
  :enable_starttls_auto => true,
  :user_name      => ENV['MANDRILL_USER'],
  :password       => ENV['MANDRILL_PASS'],
  :authentication => :login,
  :domain         => 'splatoon-notify.work'
}

Easy = SMSEasy::Client.new
