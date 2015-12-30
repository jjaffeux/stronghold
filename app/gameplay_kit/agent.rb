module GK
  class Agent < Component
    attr_accessor :behavior
    attr_accessor :mass
    attr_accessor :max_acceleration
    attr_accessor :max_speed
    attr_accessor :radius
    attr_accessor :speed
    attr_accessor :delegate

    def initialize
      super
      @behavior = nil
      @mass = 0
      @max_acceleration = 0
      @max_speed = 0
      @radius = 0
      @speed = 0
      @delegate = nil
    end

    def update_with_delta_time(delta_time)
    end
  end
end
