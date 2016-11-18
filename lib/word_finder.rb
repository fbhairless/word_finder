
class String
  define_method(:word_finder) do |word_phrase|
    word = self
    phrase = []
    phrase = word_phrase.split()
    count = 0

    phrase.each() do |element|
      if word.downcase() == element.downcase
        count = count.+(1)
      end
    end

    "Input word of: #{word}, appears #{count} times in the phrase"

  end
end
