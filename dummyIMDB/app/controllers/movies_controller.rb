class MoviesController < ApplicationController

  def index
    @movies = Movie.order(date: :desc) }
    @movies = Movie.all.group_by {|m| m.genre }
  end
end
