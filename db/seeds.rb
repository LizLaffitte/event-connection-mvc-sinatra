require_relative "../app/models/user.rb"
require_relative "../app/models/event.rb"
User.create(username: "SaraS", email: "saras@gmail.com", password: "1234")
User.create(username: "DannyD", email: "dannyd@gmail.com", password: "abcd")
Event.create(name: "Swim Camp", date: "3-1-2020", location: "Jacksonville, Florida", details: "For ages 3-16.", user_id: 1)