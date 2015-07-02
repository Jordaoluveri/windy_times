require 'open-uri'
require 'json'
class Rate
	attr_accessor :rate

	def initialize
		@rate = get_rate
	end

	def get_rate 
		stream = open('http://apilayer.net/api/live?access_key=9e305f4b863a720d286e12fbb18c0a8e').read
		JSON.parse(stream)
	end

end