Alki do
  set :name, 'app'
  func :run do
    console.start
  end

  set :root_group do
    parent
  end

  tag :main_loop
  service :console do
    require 'alki/console/pry_console'
    Alki::Console::PryConsole.new name, root_group
  end
end
