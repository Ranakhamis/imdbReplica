
Hello Reviewer,
I wanted to say first that I learned alot from this task as my first project to design and learn about many concepts in RoR and the second project overall (counting a tutorial).

So, I hope to extend the time as 2 days for almost a fresh grad considering the postgres credentials configurations that took nearly 4 hours of my time before deciding to migrate to sql to catch up with the deadline, with deprecated tools and old resources, personally I thought that designing the DB and thinking about many steps and doing good UI was alot for a 2 days weekend, let alone I almost refused because I was busy but my request wasnt approved by the HR.

Anyways, here's what I did during the process then my thoughts about DB design:

# feature that the platform offers and some notes:
.I totally avoided using scaffolds as I know it's a bad practice
. Created a nice admin panel using rails_admin gem. [Done]
. Ability to set featured movies by the platform administrator. [Done]
. Ability to see movies posted by admin as a user. [Done]
. Categorize movies by genre. [Done] 
. View the opening this week movies by their release date.[Done,sorted movies according to their release date descendingly in an instance variable inside controller passed to views]
. View the news added by the platform administrator. [ It's the same as Movies and I already made the model but I had an internal server error and I spent alot investigating it]
. Search in movies and celebrity names,and within the news content. [ I was going to use searchkick / Ajax with typeahead in js but the deadline was tight ]

# As for the normal user, the platform allows him/her to:

. Submit a review on a movie with a rating [ for this step I made a Review model that references user and movie models with a rating attribute but haven't created the reviews as comments yet because the UI had some problems after the internal server error however the logs showed the string i put in controller]

. Login to his account using Facebook - (Almost Done, I made the authentication steps [(1-gems installation 2-adding keys from developer pages and encrypting them and adding them on devise.rb , 3- session store and omniauth controller operations)]it didn't work as the authentication was prevented by omniauth itself i think it's related to sandbox disabling or a security trick  or something so i left it after 3 hours of investigation)

#####################################################################################################################################################

got a client who wants to build an platform that manages the details of movies and
celebrities such as Internet Movie Database (imdb) website. The application is completely
managed by the administrator where he/she has total control (CRUD) from the administration
panel over the following entities:
. Movies
. Actors
. Directors
. Genre
. Awards (i.e. Academy Awards)
. News
. Users
. Film Ratings (i.e. PG, PG-13)


# To be developed:
. Ability for each user to add movies to his/her watchlist.
. Construst a graph showing the ratings of a movie.
. Register a new account using Facebook
. Login to his account using Facebook
. Submit a review on a movie with a rating
. Run FB authentication and Share on Facebook a particular movie
. Search in movies and celebrity names,and within the news content.

# BackEnd
– Design patterns
– Database design and ORM (ERD is a bonus)
– RESTful
– Organization of application code
– Various Validations
– The use of Gems efficiently
– Mailers
# FrontEnd
– The integration of an HTML template
– The use of Bootstrap
– Assets Management
– Minimal View code
– JavaScript
– AJAX
# Tests
– RSpec Tests
– TDD
