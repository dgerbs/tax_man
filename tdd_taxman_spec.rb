require 'rspec'
require_relative 'tdd_taxman'

describe Liability do
	
	it 'should calculate tax liability for citizen' do
		expect(Liability.new(1000).calculate).to eql(220)
	end

	it 'should calculate tax liability for citizen' do
		expect(Liability.new(2000).calculate).to eql(440)
	end
end

