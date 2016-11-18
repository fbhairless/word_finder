require('sinatra')
require('sinatra/reloader')
require('./lib/word_finder')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  user_input = params[:results]
puts(user_input)
  return_value = user_input.to_i
  @results = 27
  erb(:results)
end
