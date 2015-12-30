module GK
  class Behavior
    attr_accessor :goals

    class << self
      def behavior_with_goal(goal, weight:weight)
        behavior = new
        behavior.goals = [goal]
        behavior.set_weight(weight, for_goal:goal)
        behavior
      end

      def behavior_with_goals(goals, and_weights:weights)
      end

      # def behavior_with_goals(goals)
      # end

      # def behavior_with_weighted_goals(goals)
      # end
    end

    def initialize
      @goals = []
      @weights = []
    end

    def set_weight(weight, for_goal:goal)
      index = @goals.index(goal)
      @weights[index] = weight
    end

    def weight_for_goal(goal)
      @weights.fetch(@goals.index(goal), 0)
    end

    def remove_goal(rejectable_goal)
      @goals.reject! do |goal|
        goal == rejectable_goal
      end
    end

    def remove_all_goals
      @goals = []
      @weights = []
    end

    # TODO investigate the need to implement this
    # - objectForKeyedSubscript:
    # - setObject:forKeyedSubscript:
    # - objectAtIndexedSubscript:
  end
end
