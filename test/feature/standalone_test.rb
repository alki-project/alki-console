require 'alki/feature_test'

describe 'Standalone' do
  before do
    start_console fixture_path 'standalone.rb'
  end

  it 'should set prompt to app by default' do
    @read.expect(/app>/,1).wont_be_nil
  end

  it 'should forward methods to context' do
    @write.puts('foo')
    @read.expect(/:foo/,1).wont_be_nil
  end
end

