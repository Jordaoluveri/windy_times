require 'spec_helper'

describe Rate do

	before :each do
		@rate = Rate.new
	end

	describe "#new" do
		it "returns the exchange rate" do
			@rate.should be_an_instance_of Rate
		end
		it "returns USD to BRL" do
			@rate.should include "USDBRL"
		end
	end

end