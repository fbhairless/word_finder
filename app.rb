require('sinatra')
require('sinatra/reloader')
require('./lib/word_finder')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/results') do
  word_finder = WordFinder.new(params.fetch('word'), params.fetch('phrase'))
  @results = word_finder.count
  erb(:results)
end
