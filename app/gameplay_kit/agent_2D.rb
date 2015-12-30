module GK
  class Agent2D < Agent
    attr_accessor :position
    attr_accessor :rotation
    attr_reader   :velocity

    def initialize
      super
      @position = [0, 0]
      @rotation = 0
    end
  end
end
