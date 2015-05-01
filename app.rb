require('sinatra')

set :bind, '0.0.0.0'
set :port, 4000

get('/form')do
  erb(:form)
end

get('/story')do
  @person1 = params.fetch('person1')
  @person2 = params.fetch('person2')
  @animal = params.fetch('animal')
  @exclamation = params.fetch('exclamation')
  @noun = params.fetch('noun')
  @verb = params.fetch('verb')
  erb(:story)
end
