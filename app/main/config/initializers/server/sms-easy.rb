require 'sms-easy'

SMSEasy::Client.config['from_address'] = "splatoon@polymetric.me"

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.mandrillapp.com',
  :port           => '2525',
  :enable_starttls_auto => true,
  :user_name      => 'austin.is.paxton@gmail.com',
  :password       => 'cDrHMEmltOtIub2SiZVSiQ',
  :authentication => :login # :plain, :login, :cram_md5, no auth by default
}

Easy = SMSEasy::Client.new
