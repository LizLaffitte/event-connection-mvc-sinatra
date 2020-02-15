# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app / Sinatra + corneal gems.
- [x] Use ActiveRecord for storing information in a database / Sinatra-active record gem to create migrations as well as persist data to the DB,
- [x] Include more than one model class (e.g. User, Post, Category)/ Have User, Event and Category models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) / User has_many Events
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) / Events belong_to User
- [x] Include user accounts with unique login attribute (username or email) / Users must have a unique email and a unique username.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying / Full CRUD functionality for Event objects using 7 RESTful routes.
- [x] Ensure that users can't modify content created by other users / Users will not see edit or delete buttons for events that don't belong to them. If they try to navigate to the Update route, they are redirected.
- [x] Include user input validations / Users must have unique emails and usernames, email addresses checked against Ruby REGEX to ensure they are email addresses. Events must have a name, location and start date. Event names must be at least 3 characters long. 
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) / Error messages displayed in red box for login and signup errors
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
