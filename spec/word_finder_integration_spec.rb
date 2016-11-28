require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('the word finder', {:type => :feature}) do
  it('processes the user input and returns a count of matching words in the argument') do
    visit('/')
    fill_in('word', :with => 'peck')
    fill_in('phrase', :with => 'Peter Piper pick a peck')
    click_button('Send')
    expect(page).to have_content('The Result is: 1')
  end
end
