require "sinatra"
require "sinatra/reloader" if development?

enable(:sessions)

get "/" do 
  "my first <i>sinatra</i> app."
end

get "/hi/:username" do 
  @username = params[:username]

  erb(:author)
end

# Llamando una variable
get "/hipage" do 
  @greeting = "Hello world"

  erb(:author)
end

get "/about" do 
  "Brief bio"
end

get "/pizza" do
  @ingredients = [ "cheese", "pepperoni", "mushrooms"]

  erb(:pizza)
end

get "/sum/:num1/:num2" do
  @sum = params[:num1].to_i + params[:num2].to_i
  @sum.to_s 
  erb(:author)
end

get "/hours/ago/:hours" do
  @hours = params[:hours].to_i
  @time = Time.now.strftime("%H").to_i - @hours

  erb(:author)
end

get "/foo" do
  status(418)
  "I'am a tea pot!"
end

get "/session_test/" do
  session[:saved_value]
end

get "/session_test/:text" do
  @text = params[:text]
  session[:saved_value] = @text
end
