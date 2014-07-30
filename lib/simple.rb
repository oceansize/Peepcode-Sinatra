require 'rubygems'
require 'sinatra'

set :views, Proc.new { File.join(root, '..', "views") }
set :public, Proc.new { File.join(root, '..', "public") }

get '/' do
  @title = "Hello"
  erb :form
end

post '/' do
  @name = "#{params[:post][:first_name]} #{params[:post][:last_name]}"
  @title = "Hello, #{@name}."
  erb :hello
end