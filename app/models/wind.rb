require 'open-uri'
require 'json'
class Wind
	attr_accessor :wind

	def initialize(lat = -22.999555, lng = -43.348580)
		@lat = lat
		@lng = lng
		@wind = get_wind_speed(lat, lng)
	end

	def get_wind_speed(lat, lng)
		hours = Array.new
		stream = open("https://api.forecast.io/forecast/f297e79d7626fa09115292bb0cd39f61/#{lat},#{lng}").read
		@return = JSON.parse(stream)
		@return['hourly']['data'].each_with_index do |data, i|
			time = Time.at(data['time'])
			hours[i] = {time: time, speed: data['windSpeed']}
		end
		hours
	end

end