module GK
  class GridGraphNode < GraphNode
    attr_accessor :grid_position

    def initialize(grid_position)
      @grid_position = grid_position
    end

    def cost_to_node(node)
      x_delta = (self.grid_position[0] - node.grid_position[0]) ** 2
      y_delta = (self.grid_position[1] - node.grid_position[1]) ** 2
      Math.sqrt(x_delta + x_delta).floor
    end
  end
end
