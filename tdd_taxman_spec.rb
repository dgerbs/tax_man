require 'rspec'
require_relative 'tdd_taxman'

describe Liability do
	
	it 'should calculate tax liability for citizen' do
		expect(Liability.new(1000)).to eql(220)
	end
end

