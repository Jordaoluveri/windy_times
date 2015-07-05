class WindsController < ActionController::Base
	
	def index
		@wind = Wind.new
		get_chart_data
	end

	def get_chart_data
		@hours = Array.new
		@speeds = Array.new
		@wind.wind.each do |categorie|
			categorie.each_pair do |key, value|
				@hours << value.strftime("%b/%d - %H:%M") if key.to_s == 'time'
				@speeds << value if key.to_s == 'speed'
			end
		end
	end

	def render_chart
	end
end

