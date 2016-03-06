# Form to create new user
get '/users/new' do
  erb :"/users/new"
end

# User's login page
get '/users/login' do
  erb :"/users/login"
end

#Validate user's info/or create new user
post '/users' do
  @user = User.find_by(user_name: params[:user_name])
  if @user.authenticate(password: params[:password])
    session[:id] = @user.id
    erb :"/users/home"
  else
    erb :"/users/login"
  end
end

# User's home page
get '/users/:id' do
  erb :homepage
end

# Form to edit user's info
get '/users/:id/edit' do

end

# Update user's info
put '/users/:id' do
end

# Delete user
delete '/users/:id' do
  # @user = User.find_by_id(params[:id])
  # @user.destroy
end