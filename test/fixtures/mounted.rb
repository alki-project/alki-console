require 'alki/console'

app = Alki.new name: 'mounted' do
  mount :console, 'alki/console'

  set :foo do
    :foo
  end
end

app.console.run
