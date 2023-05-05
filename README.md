# PROBLEM IT SOLVES
Every time I create a new Django project I always have to do a few things:

First I define an app to handle user authentication and authorisation, I always call this app accounts.

Secondly, I modify my `settings.py` file to include environment variables. I always use django-environ package.

These two steps are always true for each new project I start.

This small package will save me the time I spend doing the above as it will create a new Django project, 
modify `accounts/models.py` to have a custom user auth class and 
then modify `settings.py` include settings for environment variables among other things.

# HOW TO RUN
Clone this repo `git clone https://github.com/nicksonlangat/backend.git`

`cd backend`

`make install`

Modify the `.env` file with your secrets.

Run your migrations, spin up the server and continue building your awesome project with these repetitive tasks out of the way.

# MORE UPDATES COMING :)
