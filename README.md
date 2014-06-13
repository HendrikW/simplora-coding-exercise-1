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
         
### Development Setup

* clone the application from the github repository

### Database

* configure the database to use the credentials provided via email in form of a full URL
* create the table for delayed_job and migrate the database according to the installation section at https://github.com/collectiveidea/delayed_job 
 
### External Services

* perform all interactions with external services from inside a separate background process via queued jobs with the help of the delayed_job library 
* use the mechanize gem for all HTTP requests
* access http://bit.ly/1lsOadd in order to retrieve the correct api request 
* append the required appid parameter to the request (the appid key was provided to you via email) from an environment variable (so that `APPID=XYZ rake jobs:work` runs the correct request)
* display the image from the "MoonPathFromLocation" <pod>-tag to the user 
* also display the status code from the HTTP redirection that bit.ly performs to the user

### Client
 
* use the credentials for the pubnub service provided to you in the email to send the resulting MoonPath model to the client in JSON format  
* in the client show the retrieved information to the user  
 
### Other

* bonus task: if you get to it, change the setup so that the mechanize library code is no longer loaded in the rails application's process  

* please write a short sentence explaining why one would use a gem like mechanize instead of simply performing HTTP requests via NetHTTP or a similar HTTP library
* please also write a sentence explaining why we execute the API call(s) from a separate process and not the web server's process.
 
* please send the entire application as a zip file via email (to keep both the different credentials as well as your solution from becoming public) 