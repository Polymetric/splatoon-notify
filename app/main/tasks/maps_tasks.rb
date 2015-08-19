class MapTasks < Volt::Task

  def getmaps
    url = 'http://splatoon.ink/schedule.json'
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
    $mapnames_current = []
    result['schedule'][0]['regular']['maps'].each do |item|
      $mapnames_current << item['nameEN']
    end
    result['schedule'][0]['ranked']['maps'].each do |item|
      $mapnames_current << item['nameEN']
    end
    $gamemode_current = result['schedule'][0]['ranked']['rulesEN'] 
  end

  def printmap(num)
    $mapnames_current[num]
  end

  def printmode
    $gamemode_current
  end

end
