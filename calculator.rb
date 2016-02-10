class Calculator

  require 'rspec'

  def add(number_one, number_two)
    number_one + number_two
  end

  def subtract(number_one, number_two)
    number_one - number_two
  end

  def multiply(number_one, number_two)
    number_one * number_two
  end

  def divide(dividend, divisor)
    dividend / divisor
  end

  def square(number)
    number * number
  end

  def power(number, exponent)
    number ** exponent
  end

  def round_up(number)
    number.ceil
  end

  def round_down(number)
    number.floor
  end

  def remainder(num1, num2)
    num1 % num2
  end

  def average(*args)
    raise ArgumentError, "Not enough arguments" if args.length < 2

    sum = 0
    args.each do |arg|
      sum += arg
    end
    counter = args.count

    avg = sum/counter

    return avg
  end

end

RSpec.describe Calculator do
  describe '#average' do
    it 'should return the average of the numbers' do
      calc = Calculator.new
      avg = calc.average(6, 4, 2)
      expect(avg).to eq(4)
    end
  end

  describe '#remainder' do
    it 'should return the remainder of the two numbers' do
      calc = Calculator.new
      remainder = calc.remainder(15, 2)
      expect(remainder).to eq(1)
    end
  end

  describe '#round_up' do
    it 'should return the number rounded up' do
      calc = Calculator.new
      round = calc.round_up(1.2)
      expect(round).to eq(2)
    end
  end

  describe '#round_down' do
    it 'should return the number rounded up' do
      calc = Calculator.new
      round = calc.round_down(1.2)
      expect(round).to eq(1)
    end
  end

  describe '#add' do #saying i want to test the add method inside my calculator class
    it 'should return the sum of two numbers' do
      calc = Calculator.new 

      sum = calc.add(2,4)
      expect(sum).to eq(6) #sum == 6
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calc = Calculator.new

      difference = calc.subtract(4,2)
      expect(difference).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should return the product of the two numbers' do
      calc = Calculator.new

      answer = calc.multiply(5,2)
      expect(answer).to eq(10)
    end
  end

  describe '#divide' do
    it 'should return the quotient of the two numbers' do
      calc = Calculator.new

      answer = calc.divide(24,6)
      expect(answer).to eq(4)
    end
  end

  describe '#square' do
    it 'should return the product of a number' do
      calc = Calculator.new
      product = calc.square(5)

      expect(product).to eq(25)
    end
  end 

  describe '#power' do
    it 'should return the powers' do
      calc = Calculator.new
      answer = calc.power(5, 2)
      expect(answer).to eq(25)
    end
  end

end