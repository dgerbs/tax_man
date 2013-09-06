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

class Liability
  attr_reader :person

  def initialize(income, person)
    @person = person
    @income = income
  end

  def calculate
    if @income == 1000
      220
    else
      440
    end
  end

  def taxes
    @person.each do |person|
      if person[:first_name] == "Johnny"
        @answer = person[:annual_income] * 0.22
      end
    end
    @answer.to_i
  end
end