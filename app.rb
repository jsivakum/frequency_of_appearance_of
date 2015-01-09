require('sinatra')
require('sinatra/reloader')
require('./lib/frequency_of_appearance_of')

get('/') do
  erb(:index)
end

get('/results') do
  #@frequency = params.fetch(('phrase')).frequency_of_appearance_of(params.fetch('word_to_check'))
  @word_to_check = params.fetch('word_to_check')
  @phrase = params.fetch('phrase')
  @frequency = @phrase.frequency_of_appearance_of(@word_to_check)
  erb(:results)
end
