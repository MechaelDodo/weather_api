# Weather API

## Task description

This project is Rails API. The main purpose of this application is sending weather data in *Minsk* in json-format. Using API you can find out the weather for last 24 hours, current weather, maximum/minimum/avarage weather for last 24 hours.
### Endpoints:
1. `/weather/historical` - weather history for last 24 hours;
2. `/weather/historical/max` - maximum weather value for the last 24 hors;
3. `/weather/historical/min` - minimum weather value for the last 24 hors;
4. `/weather/historical/avg` - avarage weather value for the last 24 hors;
5. `/weather/current` - current weather value;
6. `/weather/by_time` - existing weather in database;
> To find out the temperature value exising in the database
> you have to pass in the parameters key 'timestamp' and value
>> Example:
>>> `/weather/by_time?timestamp=1621823790`
7. `/health` - it's a simple 200 ok response. 

## Requirements

Ruby - 3.0.2

Rails - 7.0.4

## Running

1. After installing the project itself run `bundle install`;

2. To run API locally you should create database(you should have PostgreSQL user `root:root`):

> Creation of database: `rails db:create`

3. To check that all is OK you can run `bundle exec rspec`;

4. To start the application itself run `rails s` in your project console.
