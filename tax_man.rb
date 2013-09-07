# #!/usr/bin/env ruby

records = [
  {
    first_name: 'Johnny',
    last_name: 'Smith',
    annual_income: 120000,
    tax_paid: 28000
  },
  {
    first_name: 'Liz',
    last_name: 'Lemon',
    annual_income: 95000,
    tax_paid: 21000
  },
  {
    first_name: 'Jane',
    last_name: 'Doe',
    annual_income: 140000,
    tax_paid: 30000
  },
  {
    first_name: 'Mike',
    last_name: 'Orsillio',
    annual_income: 40000,
    tax_paid: 8800
  }
]
 
TAX_RATE = 0.22
 
2.times do
  records.each do |record|
    #calculate the tax liability based on a flat tax
    tax = TAX_RATE * record[:annual_income]

    refund = record[:tax_paid] - tax

    join = [record[:first_name], record[:last_name]].join(" ")
    output = ""
    # determine if citizen owes tax
    if refund < 0
      # if true: output amount owed
      output = "owes #{refund * -1}"
    else
      # if false: output how much they get back
      output = "will receive a refund of #{refund}"
    end
    puts join + " " + output
  end
end
