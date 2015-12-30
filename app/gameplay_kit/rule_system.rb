module GK
  class RuleSystem
    attr_reader :rules
    attr_reader :facts

    def initialize
      @rules = []
      @facts = []
      @grades = []
    end

    def add_rule(rule)
      @rules << rule
    end

    def add_rules(array)
      @rules.concat(array)
    end

    def remove_all_rules
      @rules = []
    end

    def agenda
      @agenda ||= @rules.sort_by(&:salience).reverse
    end

    def executed
      @executed ||= []
    end

    def reset
      @agenda = nil
      @executed = nil
    end

    def evaluate
      agenda.delete_if do |rule|
        if rule.evaluate_predicate_with_system(self)
          @executed << rule
          return true
        end

        false
      end
    end

    def assert_fact(fact, grade:grade)
      @facts << fact
      index = @fact.index(fact)
      @grades[index] = 1.0
    end

    def assert_fact(fact)
      assert_fact(fact, grade:1.0)
    end

    def retract_fact(fact)
      index = @facts.index(fact)
      @facts.delete_at(index)
      @grades.delete_at(index)
    end

    def retract_fact(fact, grade:grade)
      index = @facts.index(fact)
      @grades[index] = grade
    end

    def grade_for_fact(fact)
      index = @facts.index(fact)
      @grades[index]
    end

    def minimum_grade_for_facts(facts)
      grades_for_facts(facts).min
    end

    def maximum_grade_for_facts(facts)
      grades_for_facts(facts).max
    end

    private

    def grades_for_facts(facts)
      indexes = @facts.select {|fact| facts.include?(fact)}
      @grades.select.with_index {|grade, index| indexes.include?(index)}
    end
  end
end
