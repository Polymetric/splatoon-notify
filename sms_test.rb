puts 'running sms sender'

Volt.current_app.store._players.each do |player|
  Easy.deliver(player._phone, player._carrier, "Splatoon/Notify!\nTurf War:\n#{MapTasks.printmap(0).sync}\n#{MapTasks.printmap(1).sync}\nRanked:\n#{MapTasks.printmap(2).sync}\n#{MapTasks.printmap(3).sync}", :limit => 512 )
end
