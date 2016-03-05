# Guest log in page
get '/guest' do
  erb :"/guest"
end

# Verify guest login
post '/guest' do
  redirect "/guest/:id"
end

#Brings you to the website to see registery and check off registery and rsvp
get '/guest/:id' do
  erb :"guest/:id"
end

# Make changes to guest's validation
post '/guest/:id' do
  redirect "/guest/:id"
end