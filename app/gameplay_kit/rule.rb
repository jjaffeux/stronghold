module GK
  class Rule
    class << self
      def rule_with_block_predicate(predicate, action:action)
        rule = Rule.new
        rule.predicate = WeakRef.new(predicate)
        rule.action = WeakRef.new(action)
        rule
      end
    end

    attr_accessor :predicate
    attr_accessor :action
    attr_accessor :salience

    def initialize
      @salience = 0
    end

    def evaluate_predicate_with_system(system)
      predicate.call(system)
    end
  end
end
