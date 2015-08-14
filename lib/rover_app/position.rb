module RoverApp

  class Position
    attr_reader :x_coordinate, :y_coordinate, :direction

    def initialize(x_coordinate, y_coordinate, direction)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      @direction = direction
    end

    def eql(other_position)
      self.==(other_position)
    end

    def ==(other_position)
      if @x_coordinate == other_position.x_coordinate && @y_coordinate == other_position.y_coordinate && @direction == other_position.direction
        true
      else
        false
      end
    end

  end
end
