class MoviesController < ApplicationController

  def index
    @movies = Movie.all.group_by {|m| m.order(date: :desc) }
  end
end
