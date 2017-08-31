require 'alki'

module Alki
  module Console
    module Wrapper
      def self.find_assembly(dir)
        assembly_paths = Dir[File.join(dir,'lib','**','*.rb')].select do |path|
          File.foreach(path) do |line|
            break true if line.start_with? 'Alki.project_assembly!'
          end
        end
        if assembly_paths.size == 0
          raise "Couldn't find an assembly library file"
        end
        if assembly_paths.size > 1
          raise "Found multiple assembly library files"
        end
        return assembly_paths[0][(dir.size+5)..-4]
      end

      def self.wrap(dir=Dir.pwd,assembly_name=find_assembly(dir))
        assembly = Alki.load(assembly_name)
        assembly.new do
          mount :_console, 'alki/console' do
            set :name, assembly_name.gsub('/','-')
            set :root_group do
              root
            end
          end
        end._console.run
      end
    end
  end
end
