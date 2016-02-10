require 'rspec'

class Change
  def give_me(number)
    change_array = []
    
    total = number
    coins = [25, 10, 5, 1]
      
     coins.each do |coin|
       change = total/coin
       change.times do
         change_array << coin
       end 
       total -= coin*change
     end

     change_array

  end
end

RSpec.describe Change do
  describe '#give_me' do
    it 'should return 25' do
      cng = Change.new
      expect(cng.give_me(25)).to eq([25])
    end

    it 'should return some dimes' do 
      cng = Change.new 
      expect(cng.give_me(60)).to eq([25, 25, 10])
    end

    it 'should return dimes and nickels' do
      cng = Change.new
      expect(cng.give_me(65)).to eq([25, 25, 10, 5])
    end

    it 'should return quarters, dimes, nickels and pennies' do 
      cng = Change.new
      expect(cng.give_me(67)).to eq([25, 25, 10, 5, 1, 1])
    end

    it 'should return quarters, dimes, nickels and pennies' do 
      cng = Change.new
      expect(cng.give_me(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end