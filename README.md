# Overview:

An application to display the wind conditions that contribute to wind events that elevate fire risk.

I created this application because I wanted to have an application that shows Fire Resources in one spot. As when preparing to evacuate (or preparing) I always struggled to remember all of the resources frequently used from the previous years.

---

# Technologies Used

- Rails
- Postgresql
- SQL
- bcrypt
- CORS

---

# Features

- User Authentication (JWT_tokens)

---

## Lessons Learned:

- Intended to build an application that displays the wind conditions from the WindyAPI and overlay AQI (Air Quality Index) measurements based on a specified city. This was not able to be successfully executed because React Leaflet is no longer supported through the WindyAPI.

- I will continue working on this project to include an AQI per city basis. This will be possible by way of a third-party app company I spoke to that will be providing me with a third-party API key.

---

### Author:

Kim Carpico

---

Things you may want to cover:

- Ruby version
  Rails version 6.1.3

- Run 'bundle install' to install necessary dependencies

- Run 'rails s' or 'rails server' to start the server
