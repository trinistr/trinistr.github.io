require "simplecov"
require "minitest/autorun"

SimpleCov.start do
  enable_coverage :branch
end

require_relative "bunny"

class TestBunny < Minitest::Test
  def setup
    @bun = Bunny.new
  end

  def test_hop
    assert_equal @bun.hop(1), "Ready and hop!"
    assert_equal @bun.hop(2), "Ready and hippity-hop!"
    assert_equal @bun.hop(-1), "Turn and hop!"
    assert_equal @bun.hop(0), "Lie down!"
  end
end
