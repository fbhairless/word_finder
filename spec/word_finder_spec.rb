
require('rspec')
require('./lib/word_finder')

describe('String#word_finder') do
  itgit commit("will count the number of times peck occurs in the phrase") do
    expect(("peck").word_finder()).to(eq("the word peck, appears 1 time"))
  end

end
