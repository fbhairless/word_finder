require('sinatra')
require('sinatra/reloader')
require('./lib/word_finder')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/results') do
  user_input = params.fetch('results')
  return_value = user_input.to_i
  @results = return_value.word_finder()
  erb(:results)
end
