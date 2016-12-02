Alki do
  set :name, 'app'
  set :default_root do
    root
  end

  func :run do
    root_console.start
  end

  factory :console do
    require 'alki/console/pry_console'
    -> (name,root) {
      Alki::Console::PryConsole.new name, root
    }
  end

  service :root_console do
    console name, default_root
  end
end