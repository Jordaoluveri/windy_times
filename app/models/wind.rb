require 'open-uri'
require 'json'
class Wind
	attr_accessor :wind

	def initialize
		@wind = get_wind
	end

	def self.get_wind 
		stream = open('https://api.forecast.io/forecast/f297e79d7626fa09115292bb0cd39f61/37.8267,-122.423').read
		JSON.parse(stream)
	end

end