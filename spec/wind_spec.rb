require 'spec_helper'
require 'json'

describe Wind do

	subject { Wind.new }

	describe "#new" do
		it "returns the actual windSpeed plus the next 48 speeds" do
			expect(subject.wind.length).to eql 49
		end
		it "has the hours information" do
			expect(Time.at(subject.wind[0][:time]).class).to be Time
		end	
	end
end