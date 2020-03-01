class FlickrService
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def backgrounds
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new('https://www.flickr.com/services/rest') do |f|
      f.adapter Faraday.default_adapter
      f.params[:method] = 'flickr.photos.search'
      f.params[:api_key] = ENV['FLICKR_KEY']
      f.params[:geo_context] = 2 #outdoors
      f.params[:text] = "#{location}"
      f.params[:tags] = "#{location},skyline,weather"
      f.params[:format] = 'json'
      f.params[:nojsoncallback] = 1
    end
  end
end