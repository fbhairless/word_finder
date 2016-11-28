require 'pry'

class WordFinder

  attr_reader :word, :phrase

  def initialize(word, phrase)
    @word = word
    @phrase = phrase
  end

  def count
    count = 0
    individual_words = phrase.split()

    individual_words.each do |individual_word|
      if individual_word.downcase == word.downcase
         count += 1
      end
    end
    count
  end
end
