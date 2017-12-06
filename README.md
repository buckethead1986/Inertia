# Inertia

## Overview

This is a Ruby on Rails JSON API for a front-end React project, Inertia. The
application allows users to create one v. one challenges that can take place
between individuals or groups. Users determine spectators who vote on which team
successfully completed the challenge by a given deadline. Users can participate
on some challenges and be spectators on others.

## Database Structure

The Rails backend JSON API uses a Postgres database and is deployed via Heroku.
Our React project interacts with this JSON API through get, post, and patch
requests.

Our database is structured with the following four models:

* Users

* Challenges

* User Challenges

* Comments

Users, Challenges, and Comments all have their own unique routes and are
rendered in JSON by the API. The User Challenges entries are accessed as a
nested attribute in the Challenges show and index route.

## API Use

This API is public and the only thing that requires authorization is posting to
the user session in order to login. The rest of the information is accessible to
anyone who goes to a route on the following base url:
https://www.inertia-app.herokuapp.com.

This public accessibility is mirrored in our front-end application. Users can
find all other users and challenges through a user index and a challenge index
respectively. Following that pattern, all comments are accessible via each
challenge, and are therefore accessible to all users.
