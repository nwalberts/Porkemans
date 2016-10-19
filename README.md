#Basic Background Jobs


### What is a Background Job
    - a process or task that is deferred and run in a separate background process the is picked up off of a queue

### Why Use Background Job

 Help us manage lengthy web processes or periodic tasks on our website:
        - Sending bulk notifications to a group of users
        - Consuming data from external APIs and updating the database
        - Weekly reminder email
        - Importing records from an uploaded data file

Basically, we want to do everything that is required to load the page, and have a background worker handle the rest

### Synchronous Request

The below diagram is much of what we are accustomed to as a synchronous HTTP request

[synchronous]: http://i85.photobucket.com/albums/k71/nwalberts/synchro_zpsjjul8cj1.png

When we make this request, the rest of our app is blocked until the web request is finished
  - if this lasts too long, then things will time out and we will have an error
  - better to add this to a background queue than hold everything up!

We’ll need a worker, separate from our current application process, to do this on the side while we continue to use our app
  - once it is done, it can be saved, cached, emailed etc.

[Asynchronous]: http://i85.photobucket.com/albums/k71/nwalberts/synchro_zpsjjul8cj1.png

### Options for Background Jobs
    - Delayed::Job
        - framework designed by Shopify, works well with ActiveRecord
        - Has a jobs table that tracks jobs
        - relies heavily on DB
        - very simple, good for minor queuing
    - Heroic Scheduler
        - Need very simply rake tasks to run? Look no further. You don’t even need ActiveJob!
        - runs standard chron jobs under the hood without need for configuration
        - no guarantees whatsoever
    - Sidekiq
        - fast, reliable and very well known
        - configured outside of your application
        - Built in dashboard
        - runs in memory
            - faster
            - but if it crashes you are more likely to lose jobs

Configuring Deployment with Heroku
