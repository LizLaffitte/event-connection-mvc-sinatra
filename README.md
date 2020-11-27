#Event Connection

This Sinatra MVC app was built as a project for Flatiron school. It allows users to signup, login, create events and view all events created by other users. It serves as an event calendar. 

## Getting Started
To run this app locally, fork and clone this GitHub repoto your local machine, using the terminal. 

``` 
$git clone git@github.com:YouUsername/event-connection-mvc-sinatra.git
```
Change directories into the repo directory and run bundle install. 

``` 
$cd event-connection-mvc-sinatra
$bundle install
```

Run shotgun to start an automatic reloading version of a rackup. 

```
$shotgun
```
Navigate to the route displayed in the terminal. (E.g. http://127.0.0.1:9393)

### Prerequisites
Shotgun requires Linux, Mac OSX or Linux VM on Windows.
Other than the gems listed in this app's Gemfile, you will need to have Ruby installed on your local machine as well as the ability to install Ruby gems.

## App Interaction Instructions
After making any changes in the code, reload your browser window to make a new request and see your changes. 
Navigate to the routes in events_controller, application_controller and user_controller to create new User objects; create, read update and destroy Event objects.

## Deployment
This app is meant for a development environment only. If you intend to alter this app for a live environment, additional security protocols should be put in place.

## Built With
- Sinatra
- ActiveRecord
- Corneal

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/LizLaffitte/event-connection-mvc-sinatra. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://github.com/LizLaffitte/event-connection-mvc-sinatra/code_of_conduct.md) code of conduct.

Looking for a specific way to contribute? 
- Expanding category options
- Remove past events from homepage (/) and All Events (/events) pages
- Marking past events as passed on a User's profile page (/user/:id)
- Adding the ability to sort by location and/or categories
- Adding State dropdown to Create and Edit Event forms

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details

