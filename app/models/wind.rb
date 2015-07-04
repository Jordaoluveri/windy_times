require 'open-uri'
require 'json'
class Wind
	attr_accessor :wind

	def initialize
		@wind = get_wind_speed
	end

	def get_wind_speed
		hours = Hash.new
		stream = open('https://api.forecast.io/forecast/f297e79d7626fa09115292bb0cd39f61/37.8267,-122.423').read
		@return = JSON.parse(stream)
		@return['hourly']['data'].each do |data|
			time = Time.at(data['time'])
			hours[time] = data['windSpeed']
		end
	end

end