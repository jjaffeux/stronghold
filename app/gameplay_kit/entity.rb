module GK
  class Entity
    attr_reader :components

    def initialize
      @components = []
    end

    def component_for_class(klass)
      klass.alloc.init
    end

    def add_component(component)
      component.entity = WeakRef.new(self)
      @components << component
    end

    def remove_component_for_class(klass)
      @components.reject! do |component|
        component.is_a?(klass)
      end
    end

    def update_with_delta_time(delta_time)
      @components.each do |component|
        component.update_with_delta_time(delta_time)
      end
    end
  end
end
