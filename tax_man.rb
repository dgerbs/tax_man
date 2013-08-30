#!/usr/bin/env ruby

records = [
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

# possible variable?
# tax = 0

# iterate through the records

TAX_RATE = 0.22

records.each do |record|
  efffective_tax = TAX_RATE * record[:annual_income]

  puts "#{ [record:[:first_name, :last_name]].join(" ")}"
  end
# Calculate a tax rate of 22% for each citizen

# Output tax owed