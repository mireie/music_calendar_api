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

> A [Postman Environment](https://www.postman.com/winter-resonance-398702/workspace/music-calendar-api) has been created for ease of testing.

**Base URL:** [https://music-calendar-api.herokuapp.com/api/v1](https://music-calendar-api.herokuapp.com/api/v1/)

## Endpoints

### `/shows/`
##### `GET`
Returns a paginated list of all shows with show details. View additional pages by adding `?page=[page-number]`.

#### `POST`

Adds a show with attributes provided in request body.

---

### `/shows/[:show_id]`
#### `GET`

Returns details for a show with specified `[:show_id]`.

#### `PUT`

Updates all attributes for a show with specified `[:show_id]` with provided body.

#### `PATCH`

Updates only provided attributes for a show with specified `[:show_id]` with provided body.

#### `DELETE`

Deletes show with specified `[:show_id]`.

---

### `/shows/all_ages`
#### `GET`

Returns a paginated list of all shows that match `:all_ages == true`.

---

### `/shows/upcoming`
#### `GET`

Returns a paginated list of all shows with `:showtime` in the future.

---

### `/shows/past`
#### `GET`

Returns a paginated list of all shows with `:showtime` in the past.

---

### `/shows/next_week`
#### `GET`

Returns a paginated list of all shows with `:showtime` in the next week.

---

### `/venues/`
#### `GET`

Returns a paginated list of all venues. View additional pages by adding `?page=[page-number]`

#### `POST`

Adds a venue with attributes provided in request body.

---

### `/venues/[:venue_id]`
#### `GET`

Returns details for a venue with specified `[:venue_id]`

#### `PUT`

Updates all attributes for a venue with specified `[:venue_id]` with provided body.

#### `PATCH`

Updates only provided attributes for a venue with specified `[:venue_id]` with provided body.

#### `DELETE`

Deletes show with specified `[:show_id]`.

---

### `/venues/[:venue_id]/shows/`
#### `GET`

Returns a paginated list of all shows for a venue with specified `[:venue_id]`.

 All `/shows/` endpoints listed above are available at the venue endpoint as well. For example, `/venues/1/shows/all_ages` will return a list of all shows for the specified `[:venue_id]` that match `:all_ages == true`.

 ---

# Setup/Installation Requirements

## Intial Project Setup

- Ruby is required, download and install [https://www.ruby-lang.org/en/documentation/installation/](https://www.ruby-lang.org/en/documentation/installation/)
- Bundler is required, install using the terminal with `gem install bundler`
- Ensure PostgreSQL is installed and correctly running on your local machine
- Create a directory to clone the public repository from GitHub using `git clone https://github.com/mireie/music_calendar_api`
- Enter the root of the project directory and install all gems with `bundle install`

## Intializing the Database
- Update the `config/database.yml` file to match your PostgreSQL setup
- Initialize the database with `rake db:migrate`
    - If you encounter errors here, your `database.yml` file is likely not set up correctly and you skipped the previous step!
- Seed the database with venues and reviews with the terminal command `rake db:seed`

## Running the Application
- To run the site on your local machine in the terminal run `rails s`
- Open your browser and navigate to `localhost:3000/api/v1/` (default configuration) and use the endpoints listed above to retrieve data from the api

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
