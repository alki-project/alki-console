require 'alki/feature_test'

$LOAD_PATH << Alki::Test.fixture_path('wrapper','lib')

describe 'Wrapper' do
  before do
    Dir.chdir fixture_path('wrapper')
    start_console File.expand_path('../../../exe/alki-console',__FILE__)
  end

  it 'should set prompt to wrapped assembly name' do
    @read.expect(/wrapper>/,1).wont_be_nil
  end

  it 'should forward methods to wrapped assembly' do
    @write.puts('foo')
    @read.expect(/:foo/,1).wont_be_nil
  end
end

