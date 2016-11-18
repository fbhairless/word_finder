require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('the word finder', {:type => :feature}) do
  it('accepts a word and a phrase, then counts the occurances of the word in the phrase ') do
    visit('/')
    fill_in('word', :with => 'input word')
    fill_in('phrase', :with => 'input phrase')
    click_button('Send')
    expect(page).to have_content('word and word count fron phrsae')
  end
end
