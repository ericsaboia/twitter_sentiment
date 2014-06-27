require 'twitter'

module TwittersHelper
  @@client = Twitter::REST::Client.new(Settings.twitter)

  def geo_search(q)
    sf_area = '37.7577,-122.4376,100km'
    @@client.search(q, geocode: sf_area).take(20)
  end
end
