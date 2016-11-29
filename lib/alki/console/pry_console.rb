require 'pry'

module Alki
  module Console
    class PryConsole
      def initialize(name, root)
        @name = name
        @context = root
      end

      def start
        Pry.start(@context, prompt: [proc { "#{@name}> " }, proc {"#{@name}>>"}])
      end
    end
  end
end
