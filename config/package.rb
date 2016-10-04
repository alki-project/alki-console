Alki do

  factory :console do
    require 'alki/console/pry_console'
    -> (name,root) {
      Alki::Console::PryConsole.new name,root
    }
  end
end