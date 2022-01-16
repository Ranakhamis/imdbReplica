class MoviesController < ApplicationController

  def index

    @movies_categorized = Movie.all.group_by {|m| m.genre }

    @movies_by_year = Movie.all.group_by {|m| m.date.year } 
    
    @movies = Movie.order(date: :desc) 

  end
end
