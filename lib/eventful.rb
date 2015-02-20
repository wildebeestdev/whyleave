require 'httparty'
require 'nokogiri'

class Eventful

  def initialize     
  end

  def search(params)
    coord = params[:coord]
    @key = 'tZG6XfqzmSCgbRQN'
  
    response = HTTParty.get('http://api.eventful.com/rest/events/search?within=30&where='+coord+'&app_key='+@key)

  end

end