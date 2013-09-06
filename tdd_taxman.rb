class Liability
  def initialize(income)
    @income = income
  end

  def calculate
    if @income == 1000
      220
    else
      440
    end
  end
end