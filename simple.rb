require 'rubygems'
require 'sinatra'

get '/' do
  @title = "Fly Me To The Moon"
  erb :fly
end

# __END__ is a Ruby Macro which means anything that comes after is plain text - this is where our template starts.
# @@ signifies the beginning of a template block in Sinatra
# Using 'layout' is a keyword. The @@ layout template will not render if you call it 'monkey' because it has not been explicitly called. Layout however, is a default that will activate automatically.

__END__

@@ layout
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><%= @title %></title>
</head>
<body>
  <%= yield %>
</body>
</html>

@@ fly
Anything goes.