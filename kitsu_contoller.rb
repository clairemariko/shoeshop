require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/kitsu')




get '/kitsu/new' do

  erb(:new)
end



post '/kitsu' do
  return "#{params}"
end

