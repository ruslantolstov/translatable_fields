module TranslatableFields
  class Configuration
    attr_accessor :mode

    def initialize
      @mode = :prefix_at_the_beginning
    end
  end
end
