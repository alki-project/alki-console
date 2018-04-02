require 'alki/console'

class App
  def foo
    :foo
  end
end

console = Alki::Console.new context: App.new
console.run
