# Form to create a new registry
get '/users/:id/registeries/new' do
  erb :"/registeries/new"
end


# Show the registery list
get '/users/:id/registeries' do
  erb :"/registeries"
end


# Create a new registery list
post '/users/:id/registeries' do
  erb :"/registeries"
end

# Form to edit registery list
get '/users/:id/registeries/id:/edit' do
  erb :"/registeries/edit"
end

# Update the registery list
put '/users/:id/registeries/id:' do
  erb :"/registeries/edit"
end

# Delete the registery list
delete '/users/:id/registeries/:id' do
  @user = User.find(params[:id])
  @registery =@user.registery.find(params[:id])
  @registery.destroy
  redirect :"/users/#{@user.id}"
end