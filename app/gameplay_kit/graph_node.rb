module GK
  class GraphNode
    attr_accessor :connected_nodes

    def initialize
      @connected_nodes = []
    end

    def cost_to_node(node)
    end

    def estimated_cost_to_node(node)
    end

    def find_path_to_node(node)
    end

    def find_path_from_node(node)
    end

    def add_connections_to_nodes(nodes, bidirectional:bidirectional)
      nodes.each do |node|
        @connected_nodes << node

        if bidirectional
          node.connected_nodes << self
          node.connected_nodes.uniq!
        end
      end

      @connected_nodes.uniq!
    end

    def remove_connections_to_nodes(nodes, bidirectional:bidirectional)
      nodes.each do |node|
        @connected_nodes.delete(node)

        if bidirectional
          node.connected_nodes.delete(self)
        end
      end
    end
  end
end
