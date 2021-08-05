# MySMS

MySMS (My Student Management System) is a Rails project for developers to learn Ruby on Rails on the fly and get feedback from other developers.

## Prerequisites

* Docker
* Docker Compose

## Installing MySMS

From a terminal window in the project root,
* Type "docker compose run www rake db:create" to create the database
* Type "docker compose run www rake db:migrate" to add migrations to the database

## Running MySMS
From a terminal window in the project root,
* Type "docker compose up" to build the project then navigate to http://localhost:3000
