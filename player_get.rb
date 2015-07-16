puts 'running player grabber'
puts 'grabbing first player'

Volt.current_app.store._players.first do |player|
  puts player
end
