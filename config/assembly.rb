Alki do
  set :name, 'app'
  set :console_root do
    root
  end
  service :run do
    require 'alki/console/pry_console'
    Alki::Console::PryConsole.new name, console_root
  end
end