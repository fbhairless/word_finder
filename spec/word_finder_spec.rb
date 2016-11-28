
require('rspec')
require('./lib/word_finder')

  describe '#count' do

    it 'counts the number times a word occurs in a phrase' do
      word_finder = WordFinder.new('cat', 'the cat jumps over the moon')
      expect(word_finder.count).to eq 1
    end

    it 'counts the number times a word occurs in a phrase' do
      word_finder = WordFinder.new('the', 'the cat jumps over the moon')
      expect(word_finder.count).to eq 2
    end

    it 'counts the number times a word occurs in a phrase' do
      word_finder = WordFinder.new('fish', 'the cat jumps over the moon')
      expect(word_finder.count).to eq 0
    end

    it 'counts the number times a word occurs in a phrase' do
      word_finder = WordFinder.new('CAT', 'the cat jumps over the moon')
      expect(word_finder.count).to eq 1
    end

    it 'counts the number times a word occurs in a phrase' do
      word_finder = WordFinder.new('cat', 'THE CAT JUMPS OVER THE MOON')
      expect(word_finder.count).to eq 1
    end
  end
