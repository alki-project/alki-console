Alki do
  set :name, 'app'
  set :root_group do
    parent
  end

  func :run do
    console.start
  end

  service :console do
    require 'alki/console/pry_console'
    Alki::Console::PryConsole.new name, root_group
  end
end
