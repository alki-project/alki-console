require 'pry'

module Alki
  module Console
    class PryConsole
      def initialize(name, root)
        @name = name
        @context = Context.new root
      end

      def start
        Pry.start(@context, prompt: [proc { "#{@name}> " }, proc {"#{@name}>>"}])
      end

      class Context
        attr_reader :root
        def initialize(root)
          @root = root
        end
      end
    end
  end
end
