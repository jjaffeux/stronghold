module GK
  class GraphNode2D < GraphNode
    attr_reader :position

    def initialize(position)
      @position = position
    end
  end
end
