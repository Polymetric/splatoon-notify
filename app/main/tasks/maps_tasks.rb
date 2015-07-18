class MapTasks < Volt::Task

  def getmaps
    url = 'http://s3-ap-northeast-1.amazonaws.com/splatoon-data.nintendo.net/stages_info.json'
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
    $mapnames_current = []
    result.each do |gamemode|
      gamemode['stages'].each do |stage|
        $mapnames_current << $mapnames.key(stage['id'])
      end
    end
  end

  def printmap(num)
    $mapnames_current[num]
  end

end
