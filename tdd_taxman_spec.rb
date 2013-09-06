require 'rspec'
require_relative 'tdd_taxman'

person = [
  {
    first_name: 'Johnny',
    last_name: 'Smith',
    annual_income: 120000
  },
  {
    first_name: 'Liz',
    last_name: 'Lemon',
    annual_income: 95000
  },
  {
    first_name: 'Jane',
    last_name: 'Doe',
    annual_income: 140000
  },
  {
    first_name: 'Mike',
    last_name: 'Orsillio',
    annual_income: 40000
  }
]


describe Liability do
	
	it 'should calculate tax liability for citizen' do
		expect(Liability.new(1000, person).calculate).to eql(220)
	end

	it 'should calculate tax liability for citizen' do
		expect(Liability.new(2000, person).calculate).to eql(440)
	end

	it 'should citizen pay more or receive a refund' do
		expect(Liability.new(1000, person).calculate).to eql(220)
	end

	it 'calling person method will return input hash' do
		expect(Liability.new(1000, person).person).to eql(person)
	end

	it 'will output the tax liability of two people' do
		expect(Liability.new(1000, person).taxes).to eql(26400)
	end

	it "will ouput the tax liability for all citizens" do
		expect(Liability.new())
end

