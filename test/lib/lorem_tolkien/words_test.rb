require_relative '../../test_helper'

describe LoremTolkien do
  describe ".words" do
    it "generates the specified number of words" do
      result = LoremTolkien.words(5)
      word_count = result.split(/\s+/).length
      assert_equal 5, word_count
    end

    it "uses default of 10 words when no argument given" do
      result = LoremTolkien.words
      word_count = result.split(/\s+/).length
      assert_equal 10, word_count
    end

    it "generates different word sets on multiple calls" do
      result1 = LoremTolkien.words(3)
      result2 = LoremTolkien.words(3)
      # They might be the same due to random selection, but should be valid
      assert result1.is_a?(String)
      assert result2.is_a?(String)
      assert_equal 3, result1.split(/\s+/).length
      assert_equal 3, result2.split(/\s+/).length
    end

    it "handles zero words" do
      result = LoremTolkien.words(0)
      assert_equal "", result
    end

    it "handles negative numbers gracefully" do
      result = LoremTolkien.words(-1)
      assert_equal "", result
    end

    it "handles large word counts" do
      result = LoremTolkien.words(100)
      word_count = result.split(/\s+/).length
      assert_equal 100, word_count
    end
  end
end 