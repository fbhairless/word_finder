require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  user_input = parms.fetch('results')
puts(user_input)
  return_value = user_input.to_i
  @results = return_value.word_count()
  erb(:results)
end
