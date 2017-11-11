require 'pry'

module Alki
  module Console
    class PryConsole
      def initialize(name, context)
        @name = name
        @context = context
      end

      def start
        Pry.start(@context, prompt: [proc { "#{@name}> " }, proc {"#{@name}>>"}])
      end
    end
  end
end
