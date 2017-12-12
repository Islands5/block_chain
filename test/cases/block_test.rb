require "minitest/autorun"
require_relative "../../lib/block"

class BlockTests < Minitest::Test
  def test_create_hash_when_initialization
    assert_equal(
      "ad62f1d96768e2a08246273c2542bbace4c8a7745f38be3c1183d38bbff253f0",
      Block.new(index: 0, previous_hash: '0', timestamp: 1512779478, data: "genesis block!!").hash)
  end

  def test_equal
    assert_equal true, Block.genesis_block == Block.genesis_block
  end

  def test_not_equal
    assert_equal false, Block.genesis_block == Block.new(index: 0, previous_hash: "0", timestamp: Time.now.to_i, data: "hoge")
  end
end
