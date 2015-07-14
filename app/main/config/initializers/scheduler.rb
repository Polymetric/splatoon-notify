unless RUBY_PLATFORM == 'opal'

  s = Rufus::Scheduler.singleton

  s.every '10s' do
    MapTasks.getmaps
  end

  s.cron("5 01 * * *") do
    MailTasks.send_mails
  end

  s.cron("5 05 * * *") do
    MailTasks.send_mails
  end

  s.cron("5 09 * * *") do
    MailTasks.send_mails
  end

  s.cron("5 13 * * *") do
    MailTasks.send_mails
  end

  s.cron("5 17 * * *") do
    MailTasks.send_mails
  end

  s.cron("5 21 * * *") do
    MailTasks.send_mails
  end

end
