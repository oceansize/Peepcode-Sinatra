require 'rubygems'
require 'sinatra'

get '/' do
  erb :fly
end

# __END__ is a Ruby Macro which means anything that comes after is plain text - this is where our template starts.
# @@ signifies the beginning of a template block in Sinatra
__END__

@@ fly
Fly me to the Moon.