require 'spec_helper'
require 'json'

describe Rate do

	subject { Rate.new }

	describe "#new" do

		it "returns the exchange rate" do
			expect(subject.rate['success']).to eql true
		end
		it "return USD to BRL rate" do
			expect(subject.rate['quotes']['USDBRL'].to_f.class).to eql Float
		end
	end
end