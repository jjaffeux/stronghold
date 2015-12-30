module GK
  class Graph
    attr_reader :nodes

    def initialize(nodes)
      @nodes = nodes
    end

    def add_nodes(nodes)
      @nodes.concat(nodes)
    end

    def remove_nodes(nodes)
      @nodes.delete_if do |node|
        nodes.include?(node)
      end
    end

    def find_path_from_node(start_node, to_node:end_node)
      @open_nodes.push(start_node)

      while @open_nodes.size > 0 do
      end

      start_node.cost_to_node(end_node)
    end

    # TODO
    # - connectNodeToLowestCostNode:bidirectional:
    # - findPathFromNode:toNode:
  end
end
