# jd alok in ruby on rails

For setting up the local environment, we need to install a few things. Lets start with node.

# 1. Install and setup rails.

# 2. Clone this repository.

Change the path to directory where you cloned the repo and do a bundle install

```
bundle install
```

# 3. Setup configration for postgres:

Follow this link for postgres setup: https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-ubuntu-14-04


# 4. Run migration:

```
rake db:migrate
rake restaurants:migrate
```

# 5. Start a local server

```
rails server
```

# 6. Run the application

Open localhost:3000 in Chrome
http://localhost:3000/api/v1/restaurants/jhansi/index this is the test URL.

