require 'spec_helper'

module RoverApp
  describe 'position' do

    context 'equality' do

      it 'should return positions with same x y coordinates and direction as equal' do
        position_1 = Position.new(1, 1, :N)
        position_2 = Position.new(1, 1, :N)
        expect(position_1).to eq(position_2)
      end

      it 'should return positions with different x y coordinates and direction as unequal' do
        position_1 = Position.new(1, 1, :N)
        position_2 = Position.new(1, 1, :W)
        expect(position_1).to_not eq(position_2)
      end

      it 'should check for nil values' do
        position_1 = Position.new(1, 1, :N)
        position_2 = nil
        expect(position_1).to_not eq(position_2)
      end

      it 'should check for junk values' do
        position_1 = Position.new(1, 1, :N)
        position_2 = []
        expect(position_1).to_not eq(position_2)
      end

    end

  end
end