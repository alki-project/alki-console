require 'alki/feature_test'

describe 'Mounted' do
  before do
    start_console fixture_path 'mounted.rb'
  end

  it 'should set prompt to parent assembly name' do
    @read.expect(/mounted>/,1).wont_be_nil
  end

  it 'should forward methods to parent assembly' do
    @write.puts('foo')
    @read.expect(/:foo/,1).wont_be_nil
  end
end

