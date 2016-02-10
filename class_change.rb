require 'rspec'

class ChangeMachine
  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []

    denominations.each do |coin|
      while cents >= coin
        cents -= coin
        coins << coin
      end
    end
    coins 
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    let(:change_machine){ChangeMachine.new}
    # change_machine = ChangeMachine.new

    it 'should return [1] for 1' do
      expect(change_machine.change(1)).to eq([1])
    end

    it 'should return [1, 1] for 2' do
      expect(change_machine.change(2)).to eq([1, 1])
    end

    it 'should return [1, 1, 1] for 3' do
      expect(change_machine.change(3)).to eq([1, 1, 1])
    end

    it 'should return [1, 1, 1, 1] for 4' do
      expect(change_machine.change(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [5] for 5' do
      expect(change_machine.change(5)).to eq([5])
    end

    it 'should return [5, 1] for 6' do
      expect(change_machine.change(6)).to eq([5, 1])
    end

    it 'should return [10] for 10' do
      expect(change_machine.change(10)).to eq([10])
    end

    it 'should return [10, 5, 1, 1] for 17' do
      expect(change_machine.change(17)).to eq([10, 5, 1, 1])
    end

    it 'should return [10, 10] for 20' do
      expect(change_machine.change(20)).to eq([10, 10])
    end

    it 'should return [25] for 25' do
      expect(change_machine.change(25)).to eq([25])
    end

    it 'should return [25, 25] for 50' do
      expect(change_machine.change(50)).to eq([25, 25])
    end

    it 'should return [25, 10, 5, 1] for 41' do
      expect(change_machine.change(41)).to eq([25, 10, 5, 1])
    end

    it 'should return [25, 25, 10, 5, 1, 1] for 67' do
      expect(change_machine.change(67)).to eq([25, 25, 10, 5, 1, 1])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] for 119' do
      expect(change_machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end