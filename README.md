# Music Calendar API

[https://music-calendar-api.herokuapp.com/api/v1/shows](https://music-calendar-api.herokuapp.com/api/v1/shows)

### By Michael Reiersgaard

# Technologies Used

- Ruby
- Rails
- PostgreSQL
- Puma
- Bootsnap
- Bundler
- Faker
- Kaminari

# Description

A one-day API-only project to create an API with full CRUD functionality. Also went 'above and beyond to create an API with nested routing'.

# API Information

> A [Postman Environment](https://www.postman.com/winter-resonance-398702/workspace/music-calendar-api) has been created for ease of testing.

## Endpoints

Note: Results are paginated and display 25 results at a time. To see the second page of results, for example, append `?page=2` to your query. Ex: `http://localhost:3000/api/v1/shows?page=2`

```
--[ Endpoint 1 ]----------------------------------------------------------------------------------
Description       | Get list of upcoming shows at a venue
Verb              | GET
Endpoint          | /api/v1/venues/:venue_id/shows/upcoming
--[ Endpoint 2 ]----------------------------------------------------------------------------------
Description       | Get list of past shows at a venue
Verb              | GET
Endpoint          | /api/v1/venues/:venue_id/shows/past
--[ Endpoint 3 ]----------------------------------------------------------------------------------
Description       | Get list of shows in the next 7 days at a venue
Verb              | GET
Endpoint          | /api/v1/venues/:venue_id/shows/next_week
--[ Endpoint 4 ]----------------------------------------------------------------------------------
Description       | Get list of all ages shows at a venue
Verb              | GET
Endpoint          | /api/v1/venues/:venue_id/shows/all_ages
--[ Endpoint 5 ]----------------------------------------------------------------------------------
Description       | Get list of shows at a venue
Verb              | GET
Endpoint          | /api/v1/venues/:venue_id/shows
--[ Endpoint 6 ]----------------------------------------------------------------------------------
Description       | Add a show to a venue
Verb              | POST
Endpoint          | /api/v1/venues/:venue_id/shows
--[ Endpoint 7 ]----------------------------------------------------------------------------------
Description       | Show details for a show at a venue
Verb              | GET
Endpoint          | /api/v1/venues/:venue_id/shows/:id
--[ Endpoint 8 ]----------------------------------------------------------------------------------
Description       | Update some details of a show at a venue
Verb              | PATCH
Endpoint          | /api/v1/venues/:venue_id/shows/:id
--[ Endpoint 9 ]----------------------------------------------------------------------------------
Description       | Update all details of a show at a venue
Verb              | PUT
Endpoint          | /api/v1/venues/:venue_id/shows/:id
--[ Endpoint 10 ]---------------------------------------------------------------------------------
Description       | Delete a show at a venue
Verb              | DELETE
Endpoint          | /api/v1/venues/:venue_id/shows/:id
--[ Endpoint 11 ]---------------------------------------------------------------------------------
Description       | Get list of all venues
Verb              | GET
Endpoint          | /api/v1/venues
--[ Endpoint 12 ]---------------------------------------------------------------------------------
Description       | Add a venue
Verb              | POST
Endpoint          | /api/v1/venues
--[ Endpoint 13 ]---------------------------------------------------------------------------------
Description       | Show a venue
Verb              | GET
Endpoint          | /api/v1/venues/:id
--[ Endpoint 14 ]---------------------------------------------------------------------------------
Description       | Update a venue
Verb              | PATCH
Endpoint          | /api/v1/venues/:id
--[ Endpoint 15 ]---------------------------------------------------------------------------------
Description       | Update all details of a venue
Verb              | PUT
Endpoint          | /api/v1/venues/:id
--[ Endpoint 16 ]---------------------------------------------------------------------------------
Description       | Delete a venue
Verb              | DELETE
Endpoint          | /api/v1/venues/:id
--[ Endpoint 17 ]---------------------------------------------------------------------------------
Description       | Get list of all upcoming shows
Verb              | GET
Endpoint          | /api/v1/shows/upcoming
--[ Endpoint 18 ]---------------------------------------------------------------------------------
Description       | Get list of all past shows
Verb              | GET
Endpoint          | /api/v1/shows/past
--[ Endpoint 19 ]---------------------------------------------------------------------------------
Description       | Get list of all shows in the next 7 days
Verb              | GET
Endpoint          | /api/v1/shows/next_week
--[ Endpoint 20 ]---------------------------------------------------------------------------------
Description       | Get list of all all ages shows
Verb              | GET
Endpoint          | /api/v1/shows/all_ages
--[ Endpoint 21 ]---------------------------------------------------------------------------------
Description       | Get list of all shows
Verb              | GET
Endpoint          | /api/v1/shows
--[ Endpoint 22 ]---------------------------------------------------------------------------------
Description       | Add a show
Verb              | POST
Endpoint          | /api/v1/shows
--[ Endpoint 23 ]---------------------------------------------------------------------------------
Description       | Get show details
Verb              | GET
Endpoint          | /api/v1/shows/:id
--[ Endpoint 24 ]---------------------------------------------------------------------------------
Description       | Update a show
Verb              | PATCH
Endpoint          | /api/v1/shows/:id
--[ Endpoint 25 ]---------------------------------------------------------------------------------
Description       | Update all details of a show
Verb              | PUT
Endpoint          | /api/v1/shows/:id
--[ Endpoint 26 ]---------------------------------------------------------------------------------
Description       | Delete a show
Verb              | DELETE
Endpoint          | /api/v1/shows/:id
```

---

# Setup/Installation Requirements

## Intial Project Setup

- Ruby is required, download and install [https://www.ruby-lang.org/en/documentation/installation/](https://www.ruby-lang.org/en/documentation/installation/)
- Bundler is required, install using the terminal with `gem install bundler`
- Ensure PostgreSQL is installed and correctly running on your local machine
- Create a directory to clone the public repository from GitHub using `git clone https://github.com/mireie/music_calendar_api`
- Enter the root of the project directory and install all gems with `bundle install`

## Intializing the Database

- Update the `config/database.yml` file to match your PostgreSQL setup
- Initialize the database with `rake db:create` and initialize tables with `rake db:migrate`
    - If you encounter errors here, your `database.yml` file is likely not set up correctly and you skipped the previous step!
- Seed the database with products and reviews with the terminal command `rake db:seed`

## Running the Application

- To run the site on your local machine in the terminal run `rails s`
- Open your browser and navigate to `localhost:3000/api/v1/` (default configuration) and use the endpoints listed above to retrieve data from the api

# Links

- [GitHub Repo](https://www.github.com/mireie/music_calendar_api)
- [Heroku](https://music-calendar-api.herokuapp.com/api/v1/shows)

# Known Bugs

- No known bugs at this time.

# License

[MIT](https://en.wikipedia.org/wiki/MIT_License)

Copyright (c) 2021 Michael Reiersgaard

# Contact Information

Michael Reiersgaard michael.reiersgaard [at] [gmail.com](http://gmail.com/)