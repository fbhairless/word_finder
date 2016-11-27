
require('rspec')
require('./lib/word_finder')

describe('String#word_finder') do
  it("will count the number of times peck occurs in the phrase") do
    expect(("peck").word_finder("peter piper pick a peck")).to(eq(1))
  end
binding.pry
end
