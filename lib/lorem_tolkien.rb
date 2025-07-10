require "lorem_tolkien/version"
require "yaml"

module LoremTolkien
  QUOTES_PATH = File.expand_path("lorem_tolkien/quotes.yml", __dir__)
  RAW_QUOTES = YAML.load_file(QUOTES_PATH)["quotes"]

  # Flatten all quotes for legacy/random use
  QUOTES = RAW_QUOTES.values.flatten

  def self.sentence
    QUOTES[rand(0..(QUOTES.length - 1))]
  end

  def self.sentences(n=5)
    temp = ""
    n.times do |x|
      temp += QUOTES[x % QUOTES.length] + " "
    end
    return temp
  end

  def self.paragraph
    # Generate a paragraph with 3-5 sentences
    sentence_count = rand(3..5)
    sentences(sentence_count).strip
  end

  def self.paragraphs(n=3)
    paragraphs = []
    n.times do
      paragraphs << paragraph
    end
    paragraphs.join("\n\n")
  end

  def self.words(n=10)
    # Generate exactly n words from Tolkien quotes
    return "" if n <= 0
    all_words = []
    QUOTES.each do |quote|
      words = quote.split(/\s+/)
      all_words.concat(words)
    end
    if all_words.length < n
      cycles = (n.to_f / all_words.length).ceil
      all_words = all_words * cycles
    end
    selected_words = all_words.shuffle.first(n)
    selected_words.join(" ")
  end

  def self.characters(n=50)
    # Generate text with exactly n characters from Tolkien quotes
    return "" if n <= 0
    all_text = ""
    QUOTES.each { |quote| all_text += quote + " " }
    if all_text.length < n
      cycles = (n.to_f / all_text.length).ceil
      all_text = all_text * cycles
    end
    result = all_text[0, n]
    if n >= 10 && result.length == n && result[-1] =~ /[\w]/
      last_space = result.rindex(" ")
      if last_space && last_space > n * 0.5
        result = result[0, last_space]
        result += all_text[result.length, n - result.length] if result.length < n
      end
    end
    result[0, n]
  end

  # New: Get a random quote from a specific character
  def self.quote(character)
    char = character.to_s
    return nil unless RAW_QUOTES.key?(char)
    quotes = RAW_QUOTES[char]
    quotes[rand(0..(quotes.length - 1))]
  end

  # New: List all available characters
  def self.character_names
    RAW_QUOTES.keys
  end
end
