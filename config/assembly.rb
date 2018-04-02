Alki do
  set :mounted? do
    respond_to? :parent
  end

  set :prompt do
    if mounted? && parent.assembly_name
      parent.assembly_name.gsub('/','-')
    else
      'app'
    end
  end

  func :run do
    console.start
  end

  set :context do
    if mounted?
      parent
    else
      nil
    end
  end

  tag :main_loop
  service :console do
    require 'alki/console/pry_console'
    Alki::Console::PryConsole.new prompt, context
  end
end
