require 'rspec'

# Write a method that accepts a number as a parameter returns its Roman numeral equivalent. (upto 500)
# example: roman_numeral(4) == “IV"

class Roman
  def roman_numeral(number)
    characters = {1000 => "M",
                  900 => "CM",
                  500 => "D",
                  400 => "CD",
                  100 => "C",
                  90 => "XC",
                  50 => "L",
                  40 => "XL",
                  10 => "X",
                  9 => "IX",
                  5 => "V",
                  4 => "IV",
                  1 => "I"}
    numeral = []

    characters.each do |key, value|
      while number >= key
          numeral << value
          number -= key
      end
    end
    numeral.join

  end
end

RSpec.describe Roman do 
  describe '#roman_numeral' do
    let(:rome){Roman.new}

    it 'should return a string' do
      expect(rome.roman_numeral(1).instance_of? String).to eq(true)
    end

    it 'should convert 1 to I' do
      expect(rome.roman_numeral(1)).to eq("I")
    end

    it 'should convert 2 to II' do
      expect(rome.roman_numeral(2)).to eq("II")
    end

    it 'should convert 3 to III' do
      expect(rome.roman_numeral(3)).to eq("III")
    end

    it 'should convert 4 to IV' do
      expect(rome.roman_numeral(4)).to eq("IV")
    end

    it 'should convert 5 to V' do
      expect(rome.roman_numeral(5)).to eq("V")
    end

    it 'should convert 6 to VI' do
      expect(rome.roman_numeral(5)).to eq("V")
    end

    it 'should convert 7 to VII' do
      expect(rome.roman_numeral(7)).to eq("VII")
    end

    it 'should convert 8 to VIII' do
      expect(rome.roman_numeral(8)).to eq("VIII")
    end

    it 'should convert 9 to IX' do
      expect(rome.roman_numeral(9)).to eq("IX")
    end

    it 'should convert 56 to LVI' do
      expect(rome.roman_numeral(56)).to eq("LVI")
    end

    it 'should convert 150 to CL' do
      expect(rome.roman_numeral(150)).to eq("CL")
    end

    it 'should convert 252 to CCLII' do
      expect(rome.roman_numeral(252)).to eq("CCLII")
    end

    it 'should convert 849 to DCCCXLIX' do
      expect(rome.roman_numeral(849)).to eq("DCCCXLIX")
    end

    it 'should convert 2499 to MMCDXCIX' do
      expect(rome.roman_numeral(2499)).to eq("MMCDXCIX")
    end

    it 'should convert 1949 to MCMXLIX' do
      expect(rome.roman_numeral(1949)).to eq("MCMXLIX")
    end
  end
end