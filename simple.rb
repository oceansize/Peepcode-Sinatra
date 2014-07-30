require 'rubygems'
require 'sinatra'

get '/' do
  "Feel like a wise guy, huh?"
end

get '/peepcode/?' do
  "Well hello there, peepcode!"
end

get '/hello/:name' do
  "Hello #{params[:name]}"
end

get '/this/*/is/*' do
  "this " + params[:splat].join(' is ')
end

get '/time' do
  erb 'The time now is <%= Time.now.strftime("%I:%M:%S %p") %>'
end