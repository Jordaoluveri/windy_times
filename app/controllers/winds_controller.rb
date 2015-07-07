class WindsController < ActionController::Base

	def index
		p params
		if params[:lat] && params[:lng]
			@wind = Wind.new(params[:lat], params[:lng])
		else
			@wind = Wind.new
		end
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
end

