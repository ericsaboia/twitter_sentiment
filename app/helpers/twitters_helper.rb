require 'twitter'

module TwittersHelper
  @@client = Twitter::REST::Client.new(Settings.twitter)

  def geo_search(q)
    @@client.search(q, geocode: '-23.6824124,-46.5952992,1000km').take(20)
  end
end
