require 'spec_helper'
require 'json'

describe Wind do

	subject { Wind.new }

	describe "#new" do

		it "returns the wind forecast" do
			expect(subject.wind['time']).to eql Int
		end
	end
end