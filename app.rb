require("sinatra")
require ("./lib/contacts")
require ("./lib/details")

get('/') do
  erb(:index)
end
