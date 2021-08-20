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

A one-day API-only project to create an API with full CRUD functionality.

# API Information

> A Postman Environment has been created for ease of testing:  [https://www.postman.com/winter-resonance-398702/workspace/music-calendar-api](https://www.postman.com/winter-resonance-398702/workspace/music-calendar-api)

**Base URL:** [https://music-calendar-api.herokuapp.com/api/v1](https://music-calendar-api.herokuapp.com/api/v1/)

## Endpoints

### `/shows/`

Returns a paginated list of all shows with show details. View additional pages by adding `?page=[page-number]`.

### `/shows/[:show_id]`

Returns details for a show with specified `[:show_id]`.

### `/shows/all_ages`

Returns a paginated list of all shows that match `:all_ages == true`.

### `/shows/upcoming`

Returns a paginated list of all shows with `:showtime` in the future.

### `/shows/past`

Returns a paginated list of all shows with `:showtime` in the past.

### `/shows/next_week`

Returns a paginated list of all shows with `:showtime` in the next week.

### `/venues/`

Returns a paginated list of all venues. View additional pages by adding `?page=[page-number]`

### `/venues/[:venue_id]`

Returns details for a venue with specified `[:venue_id]`

### `/venues/[:venue_id]/shows/`

Returns a paginated list of all shows for a venue with specified `[:venue_id]` All `/shows/` endpoints listed above are available at the venue endpoint as well. For example, `/venues/1/shows/all_ages` will return a list of all shows for the specified `[:venue_id]` that match `:all_ages == true`.

# Setup/Installation Requirements

## Intial project setup

- Ruby is required, download and install [https://www.ruby-lang.org/en/documentation/installation/](https://www.ruby-lang.org/en/documentation/installation/)
- Bundler is required, install using the terminal with `gem install bundler`
- Ensure PostgreSQL is installed and correctly running on your local machine
- Create a directory to clone the public repository from GitHub using `git clone https://github.com/mireie/music_calendar_api`
- Enter the root of the project directory and install all gems with `bundle install`
- Update the `config/database.yml` file to match your PostgreSQL setup
- Seed the database with venues and reviews with the terminal command `rake db:seed`
    - If you encounter errors here, your `database.yml` file is likely not set up correctly and you skipped a step!
- To run tests, in the terminal run `rspec`
- To run the site on your local machine in the terminal run `rails s`
- Open your browser and navigate to `localhost:3000` (default configuration)

# Links

- [GitHub Repo](https://www.github.com/mireie/music_calendar_api)
- [Heroku](https://music-calendar-api.herokuapp.com/api/v1/shows)

# Known Bugs

- No known bugs at this time.

# License

[MIT](https://en.wikipedia.org/wiki/MIT_License)

Copyright (c) 2021 Michael Reiersgaard

# Contact Information

Michael Reiersgaard michael.reiersgaard [at] [gmail.com](http://gmail.com/)

Postman info: [https://www.postman.com/winter-resonance-398702/workspace/music-calendar-api](https://www.postman.com/winter-resonance-398702/workspace/music-calendar-api)
