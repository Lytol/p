require 'minitest/spec'
require 'minitest/autorun'
require 'p'

describe P do
  it "should have semantic version" do
    P::VERSION.must_match /^\d+\.\d+\.\d+$/ 
  end
end
