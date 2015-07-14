class MailTasks < Volt::Task

  def onboard_user(email)
    Mailer.deliver('app/main/views/mailers/onboard.email', {to: email, :via => :smtp})
  end

  def send_mails
    _users.each do |user|
      Mailer.deliver('app/main/views/mailers/notify.email', {to: user['email'], :via => :smtp})
    end
  end

end
