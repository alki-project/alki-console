require 'alki/console'
require 'pty'
require 'expect'

Alki::Test.feature_exec do
  def start_console(cmd)
    @read, @write, @pid = PTY.spawn "ruby #{cmd}"
  end

  after do
    @read.close
    @write.close
    Process.kill('TERM',@pid)
  end
end
