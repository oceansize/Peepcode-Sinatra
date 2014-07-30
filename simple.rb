require 'rubygems'
require 'sinatra'

get '/' do
  @title = "Hello"
  erb :form
end

post '/' do
  @name = "#{params[:post][:first_name]} #{params[:post][:last_name]}"
  @title = "Hello, #{@name}."
  "Nice to meet you, #{@name}." # Notice erb is not called. This means the template below will not run.
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

@@ form
What's your name?
<form action="/" method="POST">
  <input type="text" name="post[first_name]" value="First Name" size="20" />
  <input type="text" name="post[last_name]" value="Last Name" size="20" />
  <input type="submit" value="Say hi!">
</form>
