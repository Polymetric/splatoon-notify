s = Rufus::Scheduler.singleton

s.cron("2 01 * * *") do
  MapTasks.getmaps
end
s.cron("3 01 * * *") do
  SmsTasks.send_sms
end

s.cron("2 05 * * *") do
  MapTasks.getmaps
end
s.cron("3 05 * * *") do
  SmsTasks.send_sms
end

s.cron("2 09 * * *") do
  MapTasks.getmaps
end
s.cron("3 09 * * *") do
  SmsTasks.send_sms
end

s.cron("2 13 * * *") do
  MapTasks.getmaps
end
s.cron("3 13 * * *") do
  SmsTasks.send_sms
end

s.cron("2 17 * * *") do
  MapTasks.getmaps
end
s.cron("3 17 * * *") do
  SmsTasks.send_sms
end

s.cron("2 21 * * *") do
  MapTasks.getmaps
end
s.cron("3 21 * * *") do
  SmsTasks.send_sms
end
