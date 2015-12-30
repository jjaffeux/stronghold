module GK
  class GridGraph < Graph
    def initialize(options = {})
      default_options = {
        origin: [0, 0],
        width: 5,
        height: 5,
        diagonals_allowed: false
      }

      @options = default_options.merge(options)
    end

    def node_at_grid_position(position)
      grid.detect do |node|
        node.grid_position == position
      end
    end

    def find_path_from_node(start_node, to_node:end_node)
      a_star = AStarGridGraph.new(self, start_node, end_node)
      a_star.path
    end

    # TODO
    # def connect_node_to_adjacent_nodes(nodes)
    # end

    def origin
      @options[:origin]
    end

    def width
      @options[:width]
    end

    def height
      @options[:height]
    end

    def diagonals_allowed
      @options[:diagonals_allowed]
    end

    private

    def grid
      @grid ||= build_grid
    end

    def build_grid
      grid = []
      width.times do |row|
        height.times do |col|
          grid << GridGraphNode.new([row, col])
        end
      end
      grid
    end
  end
end
