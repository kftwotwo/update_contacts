require("sinatra")
require ("./lib/contacts")
require ("./lib/details")

get('/') do
  erb(:index)
end

get('/users/new') do
  erb(:new_user)
end

get('/users') do
  erb(:users)
end
