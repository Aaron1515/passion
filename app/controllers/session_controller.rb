get '/' do
  erb :index
end

get '/logout' do
  session[:id] = nil
  erb :index
end