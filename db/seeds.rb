require_relative "../app/models/user.rb"
require_relative "../app/models/event.rb"
User.create(username: "SaraS", email: "saras@gmail.com", password: "1234")
User.create(username: "DannyD", email: "dannyd@gmail.com", password: "abcd")
Event.create(name: "Swim Camp", start_datetime: "2020-03-01T09:00", location: "Jacksonville, Florida", details: "For ages 3-16.", user_id: 1)
Event.create(name: "Horse Camp", start_datetime: "2020-04-01T07:00", location: "Fernandina Beach, Florida", details: "For ages 12+. Parent permission form must be completed.", user_id: 2)