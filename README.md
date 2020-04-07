# Fleet-Mangament

Installtion steps:
  
 1 - docker-compose up -d
 
 
 2-  this is a simple Database Client for data adminstration  http://localhost:8080   use root for (user & password)
 
 
 3 - import database file (fleet_managment.sql will be found in this Repo)  into fleet_managment  
 
 
 4 - docker run --rm -v $(pwd):/app composer install
 
 
 5 - docker-compose exec app php artisan passport:install
 
 
 6 - go to http://localhost:8000
 
 
 7 - register new user
 
 
 8- use these apis for( Login & Get Available Seat & Book Seat): https://www.getpostman.com/collections/ffa46312c01405b6b446 
