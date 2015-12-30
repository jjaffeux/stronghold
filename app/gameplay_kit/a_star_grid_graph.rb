module GK
  class PriorityQueue
    def initialize
      @list = []
    end

    def add(item, priority)
      @list << [priority, @list.length, item]
      @list.sort!
      self
    end

    def <<(pritem)
      add(*pritem)
    end

    def next
      @list.shift[2]
    end

    def empty?
      @list.empty?
    end
  end

  class AStarGridGraph
    def initialize(grid, start_node, end_node)
      @grid = grid
      @start_node = start_node
      @end_node = end_node
    end

    def path
    end
  end
end
