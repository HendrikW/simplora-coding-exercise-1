# README

## Setup

This is a simple Rails application created from the RubyMine default template for Rails 4 applications.

The application is set up to use a postgres SQL database hosted with heroku so that no local database setup is required. 

## Goals

The application will be run from the default WebRick web server.

It should inform a tech-savvy user about where to expect the moon to be positioned at night on a cloud-free Munich sky and also show some status information.

In particular, it should display an image of the moon's position on the sky in Munich computed by the Wolfram Alpha "computational knowledge engine". 
It should also inform the user with which HTTP status the bit.ly service responded to redirect the requesting agent to the Wolfram alpha service. 
 
## Tasks

* configure the database to use the credentials provided via email in form of a full URL
* use the mechanize gem for all HTTP requests
* access http://bit.ly/1lsOadd in order to retrieve the correct api request 
* append the required appid parameter to the request (the appid key was provided to you via email) from an environment variable (so that `APPID=XYZ rake jobs:work` runs the correct request)
* display the image from the "MoonPathFromLocation" <pod>-tag to the user 
* also display the status code from the HTTP redirection that bit.ly performs to the user

* please write a short sentence explaining why one would use a gem like mechanize instead of simply performing HTTP requests via NetHTTP or a similar HTTP library
* please also write a sentence explaining why we execute the API call(s) from a separate process and not the web server's process. 