require 'spec_helper'

describe Cell do
  describe '.initialize' do
    subject { Cell.new(0, 0, true) }
    it 'should respond to the following methods' do
      expect(subject). to respond_to(:x)
      expect(subject). to respond_to(:y)
      expect(subject). to respond_to(:alive)
    end
  end

  describe '.alive?' do
    context 'if the cell is alive' do
      before(:example) do
        @cell = Cell.new(0, 0, true)
      end

      it 'should return true' do
        expect(@cell.alive?).to be true
      end
    end

    context 'if the cell is dead' do
      before(:example) do
        @cell = Cell.new(0, 0, false)
      end

      it 'should return false' do
        expect(@cell.alive?).to be false
      end
    end
  end

  describe '.live' do
    context 'if the cell is dead' do
      before(:example) do
        @cell = Cell.new(0, 0, false)
      end

      it 'should make the cell alive' do
        @cell.live
        expect(@cell.alive).to eql(true)
      end
    end

    context 'if the cell is alive' do
      before(:example) do
        @cell = Cell.new(0, 0, true)
      end

      it 'should still keep the cell alive' do
        @cell.live
        expect(@cell.alive).to eql(true)
      end
    end
  end

  describe '.die' do
    context 'if the cell is dead' do
      before(:example) do
        @cell = Cell.new(0, 0, false)
      end

      it 'should keep the cell dead' do
        @cell.die
        expect(@cell.alive).to eql(false)
      end
    end

    context 'if the cell is alive' do
      before(:example) do
        @cell = Cell.new(0, 0, true)
      end

      it 'should kill the cell' do
        @cell.die
        expect(@cell.alive).to eql(false)
      end
    end
  end
end
