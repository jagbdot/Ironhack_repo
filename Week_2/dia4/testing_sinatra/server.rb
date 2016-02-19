require "sinatra"
require "sinatra/reloader" if development?

get "/" do 
  "hola mundo"
end

get "/home" do 
  status(404)
  "not possible"
end

get "/real_page" do  
  "other page"
end

get "/hi" do
  redirect 'real_page'
end


