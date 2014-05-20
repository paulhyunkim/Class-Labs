#Here There Be Bugs

- Pull this app down
- Move it to a working directory
- ```bundle install```
- ```rake db:seed```
- ```rails s```

You should be able to log in and out. 

If a user is logged-in, they should be able to view the list of dragons, add new dragons, edit existing dragons, and delete dragons.

If a user is not logged-in, they should be redirected to a view that allows them to sign in.

On the show view for dragons, if a dragon's **is_firebreathing** is set to true, a line should show up in the view about that dragon being dangerous. (That line is already writter, but the conditional is missing!)


###Things to note:

- There's one missing gem and one missing controller
- There are spelling and capitalization errors in several places
- Look for mixed-up actions and instance variables
- Look for extra stuff that shouldn't be in the app
- Follow the Rails errors 
- Ask pals for help if you're stuck!

**Bonus:** create meaningful links in the navbar (including a conditional log in/log out), re-style the app.

**Bonus bonus:** limit users to editing/deleting only dragons that they have created. You'll need to modify **dragon.rb**, among other things.


**Bonus bonus bonus:** when a user creates a new dragon, have the app send them an email congratulating them on hatching a new egg :)
