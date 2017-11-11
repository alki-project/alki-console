Alki do
  set :prompt do
    assembly_name&.gsub('/','-') || 'app'
  end

  func :run do
    console.start
  end

  set :context do
    parent
  end

  tag :main_loop
  service :console do
    require 'alki/console/pry_console'
    Alki::Console::PryConsole.new prompt, context
  end
end
