Volt.current_app.store.users.each do |user|
  puts 'mailing: ' + user
  Easy.deliver(user['phone'], user['carrier'], "Splatoon/Notify! Turf War: " + MapTasks.printmap(0) + MapTasks.printmap(1) + " Ranked: " + MapTasks.printmap(2) + MapTasks.printmap(3) )
end
