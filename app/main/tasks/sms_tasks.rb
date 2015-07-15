class SmsTasks < Volt::Task

  def onboard_user(phone, carrier)
    Easy.deliver(phone, carrier, "Welcome to Splatoon/Notify! Updates are sent at 0100, 0500, 0900, 1300, 1800, and 2100 hours, central time.")
  end

  def send_sms
    _users.each do |user|
      Easy.deliver(user['phone'], user['carrier'], "Splatoon/Notify! Turf War: " + MapTasks.printmap(0) + MapTasks.printmap(1) + " Ranked: " + MapTasks.printmap(2) + MapTasks.printmap(3) )
    end
  end

end
