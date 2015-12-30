class MainScene < MG::Scene
  def initialize
    label = MG::Text.new("Hello World", "Arial", 96)
    label.anchor_point = [0, 0]
    add label


    grid = GK::GridGraph.new
    p grid
    p grid.node_at_grid_position([4, 2])

    start_node = grid.node_at_grid_position([0, 0])
    end_node = grid.node_at_grid_position([4, 4])
    p grid.find_path_from_node(start_node, to_node:end_node)
  end
end
