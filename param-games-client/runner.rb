require 'unirest'

system 'clear'

print "Give me your name: "
user_name = gets.chomp

response = Unirest.get("http://localhost:3000/name_in_caps_url/#{user_name}")
data = response.body
puts JSON.pretty_generate(data)