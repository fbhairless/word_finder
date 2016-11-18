
require('rspec')
require('./lib/word_finder')

describe('String#wprd_finder') do
  it("will count the number of times peck occurs in the phrase") do
    expect(("peck").word_finder("Peter Piper picked a peck of pickled peppers, where is the peck of pickled peppers Peter Piper picked")).to(eq("Input word of: peck, appears 2 times in the phrase"))
  end

end
