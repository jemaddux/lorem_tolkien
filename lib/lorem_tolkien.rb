require "lorem_tolkien/version"

module LoremTolkien
  class Base
    def self.source
      @source ||= self.read
    end

    def self.processed_source
      @processed_source ||= self.source.split("\n").uniq
    end

  private

    def self.read
      File.read(File.expand_path('book/quotes.txt'))
    end
  end

  class Sentence < Base
    def self.sentence
      self.processed_source.sample
    end

    def self.sentences(n=5)
      self.processed_source.sample(n)
    end
  end
end
