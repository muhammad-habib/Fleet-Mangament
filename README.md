# Fleet-Mangament

Installtion steps:
  
    1 - docker-compose up -d
    2-  this is a simple Database Client for data adminstration  http://localhost:8080   use root for (user & password)
    2 - import database file (  )  into fleet_managment  
    3 - docker run --rm -v $(pwd):/app composer install
    4 - docker-compose exec app php artisan passport:install
    5 - go to http://localhost:8000/
    6 - register new user
    7- use these apis for( Login & Get Available Seat & Book Seat):https://www.getpostman.com/collections/ffa46312c01405b6b446 
