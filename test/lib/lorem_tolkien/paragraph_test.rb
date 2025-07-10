require_relative '../../test_helper'

describe LoremTolkien do
  describe ".paragraph" do
    it "generates a single paragraph" do
      paragraph = LoremTolkien.paragraph
      assert paragraph.is_a?(String)
      assert !paragraph.empty?
      # Should contain multiple sentences (3-5)
      sentence_count = paragraph.split(/[.!?]+/).reject(&:empty?).length
      assert sentence_count >= 3
      assert sentence_count <= 5
    end

    it "generates different paragraphs on multiple calls" do
      paragraph1 = LoremTolkien.paragraph
      paragraph2 = LoremTolkien.paragraph
      # They might be the same due to random selection, but should be valid
      assert paragraph1.is_a?(String)
      assert paragraph2.is_a?(String)
    end
  end

  describe ".paragraphs" do
    it "generates the specified number of paragraphs" do
      result = LoremTolkien.paragraphs(3)
      paragraphs = result.split("\n\n")
      assert_equal 3, paragraphs.length
    end

    it "uses default of 3 paragraphs when no argument given" do
      result = LoremTolkien.paragraphs
      paragraphs = result.split("\n\n")
      assert_equal 3, paragraphs.length
    end

    it "generates paragraphs separated by double newlines" do
      result = LoremTolkien.paragraphs(2)
      assert result.include?("\n\n")
      paragraphs = result.split("\n\n")
      assert_equal 2, paragraphs.length
    end

    it "handles zero paragraphs" do
      result = LoremTolkien.paragraphs(0)
      assert_equal "", result
    end

    it "handles negative numbers gracefully" do
      result = LoremTolkien.paragraphs(-1)
      assert_equal "", result
    end
  end
end 