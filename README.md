
Hello Reviewer,<br />

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

#############################################################################################################

![github.small](Screenshot%20from%202022-01-15%2021-50-20.png) <br  />

![github.small](Screenshot%20from%202022-01-15%2021-50-37.png) <br />

![github.small](Screenshot%20from%202022-01-15%2021-50-46.png) <br />

# This one to support showing movies for user by latest release (look at the second screeshot to check the dates of the movies from a past screenshot)
![github.small](Screenshot%20from%202022-01-16%2001-39-51.png) <br />

![github.small](Screenshot%20from%202022-01-16%2001-23-50.png) <br />


# feature that the platform offers and some notes: <br />
.I totally avoided using scaffolds as I know it's a bad practice <br /> 
.CRUD Operation of Movie by admin  [Done] <br />
.The use of Gems efficiently [Done] <br />
.Various Validations [Done and WIP] <br />
. Created a nice admin panel using rails_admin gem. [Done] <br />
. Ability to set featured movies by the platform administrator. [Done] <br />
. Ability to see movies posted by admin as a user. [Done] <br />
. Categorize movies by genre. [Done] <br />
. View the opening this week movies by their release date.[Done,sorted movies according to their release date descendingly in an instance variable inside controller passed to views] <br />
. View the news added by the platform administrator. [ It's the same as Movies and I already made the model but I had an internal server error and I spent alot investigating it] <br />
. Search in movies and celebrity names,and within the news content. [ I was going to use searchkick / Ajax with typeahead in js but the deadline was tight ] <br />

# As for the normal user, the platform allows him/her to: <br />

. Submit a review on a movie with a rating <br /> [ for this step I made a Review model that references user and movie models with a rating attribute but haven't created the reviews as comments yet because the UI had some problems after the internal server error however the logs showed the string i put in controller] <br />

. Login to his account using Facebook (Almost Done, I made the authentication steps [(1-gems installation 2-adding keys from developer pages and encrypting them and adding them on devise.rb , 3- session store and omniauth controller operations)]it didn't work as the authentication was prevented by omniauth itself maybe it's related to a security trick or maybe sandbox but I'm not using it, so i left it after 3 hours of investigation) <br />

# Expected DB Design: <br />
. I didnt want to figure out the structure then build the data, so many models I saw them as just attributes at the beginning but I knew that they can either be models or attributes for the class to deal with it and update everything by migration files and it made me confused somehow because I didn't want redundancy in the db in case I create the associations in the same table with an attribute(however I don't know if normalization would have been a good sol to solve the root of the problem or not in this case which was I think a bad design ) so I saw 3 basic models from the 8 entities : 1- User 2- Movie 3- News <br  />

Thre other 4 entities for me was the ratings which I added as PG in Movie as an attribute set by admin and it made sense to me and as an attribute in Reviews Model which was the 4th model to deal with it by reference to user and movie. <br  />

also the Awards, Genre, Director, Actor entity in case of scalability would have been better to be a model for sure but for simplicity I assumed it as an attribute as till the point I reached it wasn't necessary to do otherwise.





