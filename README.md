
Author Name: Hal FairlessM
Program Name:  word_finder
URL: heroku URL goes here once identified

Description:  The word_finder method takes user input of a word and a phrase and counts the number of times that word appears in the phrase.  It spits the phrase into the individual words and compares each word of the phrase to the input word. The method utilizes the downcase method against the input word and the input phrase to assure that case does not influence the comparison.  For each equal comparison the method then add to a counter, which is then used in the output

Set-up Instructions:  Uses the following gems:
gem('sinatra')
gem('sinatra-contrib')
gem('rspec')
gem('capybara')
gem('pry')

Run bundle.

Known Bugs:
unit testing fails in spec/word_finder_spec.rb

ArgumentError:
       wrong number of arguments (given 0, expected 1)
     # ./lib/word_finder.rb:3:in `block in <class:String>'
     # ./spec/word_finder_spec.rb:7:in `block (2 levels) in <top (required)>'

Debugging has been attempted using puts and pry, without success.

MIT License.
