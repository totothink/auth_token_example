require 'http'

auth = HTTP.post("http://localhost:3000/knock/auth_token", json: { auth: {email: 'foobar@example.com', password: '123456'}})

result = JSON.parse(auth.body)

headers =  { Authorization: "Bearer #{result['jwt']}" }

articles = HTTP.get("http://localhost:3000/articles", headers: headers)

puts JSON.parse(articles.body)