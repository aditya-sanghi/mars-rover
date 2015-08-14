require 'spec_helper'

module RoverApp
  describe 'position' do

    context 'equality' do

      it 'should return positions with same x y coordinates and direction as equal' do
        position_1 = Position.new(1, 1, :N)
        position_2 = Position.new(1, 1, :N)
        expect(position_1).to eq(position_2)
      end

    end

  end
end