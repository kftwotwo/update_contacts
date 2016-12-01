require("sinatra")
require ("./lib/contacts")
require ("./lib/details")
require ("./lib/user")

get('/') do
  erb(:index)
end

get('/users/new') do
  erb(:new_user)
end

get('/users') do
  @users = User.all()
  erb(:users)
end

post('/users') do
  inputed_user = params.fetch('inputed_user')
  user = User.new(:name => inputed_user)
  user.save()
  @users = User.all()
  erb(:success)
end

get("/users/:id") do
  @user = User.find(params.fetch('id').to_i())
  @contacts = Contact
  erb(:contacts)
end
