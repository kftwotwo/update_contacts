require("sinatra")
require ("./lib/contacts")
require ("./lib/details")
require ("./lib/user")
require("pry")

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
  @contacts = Contact.all()
  erb(:contacts)
end

get("/contacts/new") do
  erb(:contact_name)
end

get('/contacts/:id') do
  @contacts = Contact.all()
  erb(:contacts)
end

post('/contacts/new') do
  inputed_name = params.fetch('contact_name')
  contact = Contact.new({:name => inputed_name})
  contact.add()
  binding.pry
  @contacts = Contact.all()
  erb(:success)
end

# get('/contacts') do
#   @contacts = Contact.all()
#   erb(:contacts)
# end



# inputed_address = params.fetch('address_input')
# inputed_home = params.fetch('home_phone_input')
# inputed_cell = params.fetch('cell_phone_input')
# inputed_email = params.fetch('email_input')
